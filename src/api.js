
var nearAPI = require("./near");
const { Pool } = require("pg");

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
            user_type varchar(10) NOT NULL,\
            balance int \
        )");

    let accountsMap = await nearAPI.createAccounts(4).catch(console.error);
    let users = ['Theresa', 'Eleanor Pena', 'Courtney Henry', 'Leslie Alexander', 'Deveon Lane'];
    let i = 0;
    for (const [accountId, account] of accountsMap.entries()) {
        try {
            const type = (i == 0) ? 'owner' : 'user';
            const balance = await nearAPI.balanceOf(accountId);
            await client.query(`\
                INSERT INTO users (user_name, account_id, public_key, user_type, balance) \
                VALUES ('${users[i]}', '${accountId}', '${account.publicKey}', '${type}', ${balance})\
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
};

const list_users_table = async function (req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT * FROM users");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const list_purchased_table = async function (req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT * FROM purchased_items");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const get_users = async function (req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT user_name, user_type, balance FROM users");
    client.release();

    //console.log(result.rows);
    res.json(result.rows);
};

const get_user_items = async function (req, res, next) {
    const client = await pool.connect();
    var result = await client.query(`SELECT item_name FROM purchased_items WHERE user_name = '${req.query['user_name']}'`);
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const get_all_items = async function (req, res, next) {
    const client = await pool.connect();
    var result = await client.query("SELECT * FROM items");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const get_balance = async function (req, res, next) {
    const client = await pool.connect();

    var result = await client.query(`SELECT balance FROM users WHERE user_name = '${req.query['user_name']}'`);

    console.log('Balance is ' + JSON.stringify(result.rows[0].balance));
    res.status(200).send(JSON.stringify(result.rows[0].balance));

    client.release();
};

const mint = async function (req, res, next) {
    const client = await pool.connect();

    var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

    if (await nearAPI.mint(result.rows[0].account_id, req.body.value.toString())) {
        var result = await client.query(`\
            UPDATE users \
            SET balance = balance + ${req.body.value} \
            WHERE user_name = '${req.body.user_name}';\
            `);

        console.log('Mint ' + JSON.stringify(req.body.user_name) + ' with value ' + JSON.stringify(req.body.value));
        res.status(200).send('Mint ' + JSON.stringify(req.body.user_name) + ' with value ' + JSON.stringify(req.body.value));
    } else {
        console.log('Mint ' + JSON.stringify(req.body.user_name) + ' failed with value ' + JSON.stringify(req.body.value));
        res.status(400).send('Mint ' + JSON.stringify(req.body.user_name) + ' failed with value ' + JSON.stringify(req.body.value));
    }
    client.release();
};

const transfer = async function (req, res, next) {
    // TODO: check if balance is greater or equal to value
    const client = await pool.connect();

    var query = await client.query(`\
        SELECT balance, account_id FROM users \
        WHERE user_name = '${req.body.user_name1}'`);
    
    if (query.rows[0].balance >= req.body.value) {
        var query2 = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name2}'`);

        if (await nearAPI.transfer(query.rows[0].account_id, query2.rows[0].account_id, JSON.stringify(req.body.value))) {
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
            res.status(200).send('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + ' to ' + JSON.stringify(req.body.user_name2));
        } else {
            res.status(401).send("Transfer failed");
        }
    } else {
        res.status(400).send("Transfer failed: balance is too low");
    }

    client.release();    
};

const purchase = async function (req, res, next) {
    const client = await pool.connect();

    var price = await client.query(`SELECT price FROM items WHERE item_name = '${req.body.item_name}'`);
    var balance = await client.query(`SELECT balance FROM users WHERE user_name = '${req.body.user_name}'`);
    if (balance.rows[0].balance >= price.rows[0].price) {
        // burn some gas
        var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);
        if (await nearAPI.burn(result.rows[0].account_id, JSON.stringify(price.rows[0].price))) {
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
            res.status(200).send('User ' + JSON.stringify(req.body.user_name) + ' bought ' + JSON.stringify(req.body.item_name) + ' for price ' + JSON.stringify(price.rows[0].price));
        } else {
            res.status(401).send("Purchase failed");
        }
    } else {
        res.status(400).send("Purchase failed: balance is too low");
    }
    client.release(); 
};

const add_moderator = async function (req, res, next) {
    const client = await pool.connect();

    var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

    if (await nearAPI.addModerator(result.rows[0].account_id)) {
        result = await client.query(`\
            UPDATE users \
            SET user_type = 'moderator' \
            WHERE user_name = '${req.body.user_name}';\
            `);
        
        console.log("Moderator " + JSON.stringify(req.body.user_name) + " was added");
        res.status(200).send(("Moderator " + JSON.stringify(req.body.user_name) + " was added"));
    } else {
        res.status(400).send(("Unable to add moderator " + JSON.stringify(req.body.user_name)));
    }

    client.release();
};

const remove_moderator = async function (req, res, next) {
    const client = await pool.connect();

    var result = await client.query(`\
        SELECT account_id FROM users\
        WHERE user_name = '${req.body.user_name}'`);

    if (await nearAPI.removeModerator(result.rows[0].account_id)) {
        var result = await client.query(`\
            UPDATE users \
            SET user_type = 'user' \
            WHERE user_name = '${req.body.user_name}';\
            `);

        console.log("Moderator " + JSON.stringify(req.body.user_name) + " was removed");
        res.status(200).send("Moderator " + JSON.stringify(req.body.user_name) + " was removed");
    } else {
        res.status(400).send(("Unable to remove moderator " + JSON.stringify(req.body.user_name)));
    }

    client.release();
};

const start_benchmark = async function (req, res, next) {
};

const get_benchmark_progress = async function (req, res, next) {
};

const get_benchmark_result = async function (req, res, next) {
};

module.exports = {
    init,
    list_users_table,
    list_purchased_table,
    get_users,
    add_moderator,
    remove_moderator,
    get_balance,
    start_benchmark,
    get_benchmark_progress,
    get_benchmark_result,
    mint,
    transfer,
    purchase,
    get_user_items,
    get_all_items
  }
