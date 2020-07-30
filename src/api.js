var nearAPI = require("./near");
const { Pool } = require("pg");
const { Benchmark } = require("./benchmark");

const benchmark = Benchmark.getInstance();

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "near",
  password: "1234",
  port: "5432"
});

const init = async function () {
    const client = await pool.connect();
    await client.query("DROP TABLE IF EXISTS users, items, purchased_items;");

    await client.query("\
        CREATE TABLE IF NOT EXISTS users\
        (\
            user_name varchar(100) NOT NULL,\
            account_id varchar(100) NOT NULL,\
            public_key varchar(100) NOT NULL,\
            private_key varchar(100) NOT NULL,\
            user_type varchar(10) NOT NULL,\
            balance int \
        )");

    let accountsMap;

    try {
        accountsMap = await nearAPI.createAccounts(4);
    } catch (e) {
        console.error("createAccounts Failed: " + e);
        process.exit();
    }

    let users = ['Theresa', 'Eleanor Pena', 'Courtney Henry', 'Leslie Alexander', 'Deveon Lane'];
    let i = 0;
    for (const [accountId, account] of accountsMap.entries()) {
        try {
            const type = (i == 0) ? 'owner' : 'user';
            const balance = await nearAPI.balanceOf(accountId);
            await client.query(`\
                INSERT INTO users (user_name, account_id, public_key, private_key, user_type, balance) \
                VALUES ('${users[i]}', '${accountId}', '${account.publicKey}', '${account.privateKey}', '${type}', ${balance})\
                `);
        } catch (e) {
            console.error(e);
        }
        i++;
    }

    await client.query("\
        CREATE TABLE IF NOT EXISTS items\
        (\
            item_name varchar(100) NOT NULL,\
            price int \
        )");
    await client.query("\
        INSERT INTO items (item_name, price) \
        VALUES ('Silver Award', 100),\
               ('Golden Award', 500),\
               ('Diamond Award', 1800);\
        ");

    await client.query("\
        CREATE TABLE IF NOT EXISTS purchased_items\
        (\
            user_name varchar(100) NOT NULL,\
            item_name varchar(100) NOT NULL\
        )");

    client.release()

    try {
        await benchmark.createBenchmarkAccounts();
    } catch (e) {
        console.error("createBenchmarkAccounts Failed: " + e);
        process.exit();
    }
};

const load = async function () {
    try {
        const client = await pool.connect()
        var result = await client.query("SELECT account_id, public_key, private_key, user_type FROM users");
        client.release();

        await nearAPI.loadAccounts(result.rows);
    } catch (e) {
        console.error("loadAccounts Failed: " + e);
        process.exit();
    }

    try {
        await benchmark.createBenchmarkAccounts();
    } catch (e) {
        console.error("createBenchmarkAccounts Failed: " + e);
        process.exit();
    }
};

const list_users_table = async function (req, res, next) {
    try {
        const client = await pool.connect()
        var result = await client.query("SELECT * FROM users");
        client.release();

        console.log(result.rows);
        res.json(result.rows);
    } catch (e) {
            console.error(e);
            res.status(400).send();
        }
    };

const list_purchased_table = async function (req, res, next) {
    try {
        const client = await pool.connect()
        var result = await client.query("SELECT * FROM purchased_items");
        client.release();

        console.log(result.rows);
        res.json(result.rows);
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const get_users = async function (req, res, next) {
    try {
        const client = await pool.connect()
        var result = await client.query("SELECT user_name, user_type, balance FROM users");
        client.release();

        //console.log(result.rows);
        res.json(result.rows);
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const get_user_items = async function (req, res, next) {
    try {
        const client = await pool.connect();
        var result = await client.query(`SELECT item_name FROM purchased_items WHERE user_name = '${req.query['user_name']}'`);
        client.release();

        console.log(result.rows);
        res.json(result.rows);
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const get_all_items = async function (req, res, next) {
    try {
        const client = await pool.connect();
        var result = await client.query("SELECT * FROM items");
        client.release();

        console.log(result.rows);
        res.json(result.rows);
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const get_balance = async function (req, res, next) {
    try {
        const client = await pool.connect();

        var result = await client.query(`SELECT balance FROM users WHERE user_name = '${req.query['user_name']}'`);

        console.log('Balance is ' + JSON.stringify(result.rows[0].balance));
        res.status(200).send(JSON.stringify(result.rows[0].balance));

        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const mint = async function (req, res, next) {
    try {
        const client = await pool.connect();

        var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

        const tx = await nearAPI.mint(result.rows[0].account_id, req.body.value.toString());

        if (tx) {
            var result = await client.query(`\
            UPDATE users \
            SET balance = balance + ${req.body.value} \
            WHERE user_name = '${req.body.user_name}';\
            `);

            console.log('Mint ' + JSON.stringify(req.body.user_name) + ' with value ' + JSON.stringify(req.body.value));
            res.status(200).send(tx);
        } else {
            console.log('Mint ' + JSON.stringify(req.body.user_name) + ' failed with value ' + JSON.stringify(req.body.value));
            res.status(400).send('Mint ' + JSON.stringify(req.body.user_name) + ' failed with value ' + JSON.stringify(req.body.value));
        }
        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const transfer = async function (req, res, next) {
    try {
        // TODO: check if balance is greater or equal to value
        const client = await pool.connect();

        var query = await client.query(`\
        SELECT balance, account_id FROM users \
        WHERE user_name = '${req.body.user_name1}'`);

        if (query.rows[0].balance >= req.body.value) {
            var query2 = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name2}'`);

        const tx = await nearAPI.transfer(query.rows[0].account_id, query2.rows[0].account_id, req.body.value.toString());

            if (tx) {
                var result = await client.query(`\
                UPDATE users \
                SET balance = balance - ${req.body.value} \
                WHERE user_name = '${req.body.user_name1}';\
                `);
                var result2 = await client.query(`\
                UPDATE users \
                SET balance = balance + ${req.body.value} \
                WHERE user_name = '${req.body.user_name2}';\
                `);
                console.log('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + ' to ' + JSON.stringify(req.body.user_name2));
                res.status(200).send(tx);
            } else {
                res.status(401).send("Transfer failed");
            }
        } else {
            res.status(400).send("Transfer failed: balance is too low");
        }

        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const purchase = async function (req, res, next) {
    try {
        const client = await pool.connect();

        var price = await client.query(`SELECT price FROM items WHERE item_name = '${req.body.item_name}'`);
        var balance = await client.query(`SELECT balance FROM users WHERE user_name = '${req.body.user_name}'`);
        if (balance.rows[0].balance >= price.rows[0].price) {
            // burn some gas
            var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

        const tx = await nearAPI.burn(result.rows[0].account_id, JSON.stringify(price.rows[0].price));
            if (tx) {
                var result = await client.query(`\
                INSERT INTO purchased_items \
                VALUES ('${req.body.user_name}', '${req.body.item_name}');\
                `);
                var result2 = await client.query(`\
                UPDATE users \
                SET balance = balance - ${price.rows[0].price} \
                WHERE user_name = '${req.body.user_name}';\
                `);
                console.log('User ' + JSON.stringify(req.body.user_name) + ' bought ' + JSON.stringify(req.body.item_name) + ' for price ' + JSON.stringify(price.rows[0].price));
                res.status(200).send(tx);
            } else {
                res.status(401).send("Purchase failed");
            }
        } else {
            res.status(400).send("Purchase failed: balance is too low");
        }
        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const add_moderator = async function (req, res, next) {
    try {
        const client = await pool.connect();

        var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

        const tx = await nearAPI.addModerator(result.rows[0].account_id);

        if (tx) {
            result = await client.query(`\
            UPDATE users \
            SET user_type = 'moderator' \
            WHERE user_name = '${req.body.user_name}';\
            `);

            console.log("Moderator " + JSON.stringify(req.body.user_name) + " was added");
            res.status(200).send(tx);
        } else {
            res.status(400).send(("Unable to add moderator " + JSON.stringify(req.body.user_name)));
        }

        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const remove_moderator = async function (req, res, next) {
    try {
        const client = await pool.connect();

        var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

        const tx = await nearAPI.removeModerator(result.rows[0].account_id);

        if (tx) {
            var result = await client.query(`\
            UPDATE users \
            SET user_type = 'user' \
            WHERE user_name = '${req.body.user_name}';\
            `);

            console.log("Moderator " + JSON.stringify(req.body.user_name) + " was removed");
            res.status(200).send(tx);
        } else {
            res.status(400).send(("Unable to remove moderator " + JSON.stringify(req.body.user_name)));
        }

        client.release();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const start_benchmark = async function (req, res, next) {
    try {
        benchmark.runBenchmark();
        res.status(200).send();
    } catch (e) {
        console.error(e);
        res.status(400).send();
    }
};

const get_benchmark_progress = async function (req, res, next) {
    res.json({
        progress: benchmark.getProgress(), 
        tps: benchmark.getTps(), 
        totalTx: benchmark.getTotalTx(),
        averageGasBurnt: benchmark.getAverageGasBurnt(),
        averageTxFee: benchmark.getAverageTxFee(),
        contract: benchmark.getContract()
    });
};

module.exports = {
    init,
    load,
    list_users_table,
    list_purchased_table,
    get_users,
    add_moderator,
    remove_moderator,
    get_balance,
    start_benchmark,
    get_benchmark_progress,
    mint,
    transfer,
    purchase,
    get_user_items,
    get_all_items
  }
