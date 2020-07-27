

//const { Near } = require("./near.js");
const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "near",
  password: "1234",
  port: "5432"
});

//const near = Near.getInstance();

const { Contract, KeyPair, connect } = require('near-api-js');
const { InMemoryKeyStore, MergeKeyStore, UnencryptedFileSystemKeyStore } = require('near-api-js').keyStores;
const { parseNearAmount } = require('near-api-js').utils.format;

class Near {

    constructor() {
        this.ownerAccount = null;
        this.accountsMap = new Map();
    }

    static getInstance() {
        if (!this.instance) {
            this.instance = new Near();
        }
        return this.instance;
    }

    async createAccounts(numAccounts) {
        const contractConfig = {
            viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
            changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership']
        }
    
        const config = require('./config')('ci');//'development');
        const keyStore = new MergeKeyStore([
            new InMemoryKeyStore(),
            new UnencryptedFileSystemKeyStore('./neardev')
        ]);
        const near = await connect({ ...config, keyStore });
    
        const sleep = (time) => new Promise((resolve) => setTimeout(resolve, time));
    
        console.log('Setting up and deploying contract');
        const masterAccountName = `nrb-master-${Date.now()}`;
        const contractName = masterAccountName;
        const keyPair = KeyPair.fromRandom('ed25519');
        await keyStore.setKey(config.networkId, masterAccountName, keyPair);
        const masterAccount = await near.createAccount(masterAccountName, keyPair.publicKey.toString());
        await masterAccount.deployContract(require('fs').readFileSync('./out/main.wasm'));
    
        const masterAccountAcc = await near.account(masterAccountName);
        const masterAccountContract = new Contract(masterAccountAcc, contractName, contractConfig);
    
        this.ownerAccount = {
            accountId: masterAccountName,
            publicKey: '1' + keyPair.publicKey.toString().substring(8),
            contract: masterAccountContract
        };
    
        this.accountsMap.set(this.ownerAccount.accountId, {
            publicKey: this.ownerAccount.publicKey,
            contract: this.ownerAccount.contract
        });
    
        await masterAccountContract.init({ totalSupply: '20000' });
        const response = await masterAccountContract.balanceOf({ tokenOwner: this.ownerAccount.publicKey });
        console.log("balance:" + JSON.stringify(response));
    
        console.log("https://explorer.testnet.near.org/accounts/" + masterAccountName);
    
        console.log('Creating accounts')
        console.time('create accounts');
        const accountPrefix = `nrb-user-${Date.now()}`;
        let contracts = [];
        for (let i = 0; i < numAccounts; i++) {
            const accountId = `${accountPrefix}-${i}`;
            let contract = await (async () => {
                const keyPair = KeyPair.fromRandom('ed25519');
                await keyStore.setKey(config.networkId, accountId, keyPair);
                await masterAccount.createAccount(accountId, keyPair.publicKey, parseNearAmount('0.1'));
                const account = await near.account(accountId);
                const contract = new Contract(account, contractName, contractConfig);
    
                this.accountsMap.set(accountId, {
                    publicKey: '1' + keyPair.publicKey.toString().substring(8),
                    contract: contract
                });
    
                return contract
            })();
            //contracts.push(contract);
            process.stdout.write('-');
        }
        console.timeEnd('create accounts');

        console.log(JSON.stringify(this.accountsMap));
    
        return this.accountsMap;
    }
    
    async getBalances() {
        console.log('get balances');
        for (const [accountId, account] of this.accountsMap.entries()) {
            try {
                const response = await account.contract.balanceOf({ tokenOwner: account.publicKey });
                console.log("balance:" + JSON.stringify(response));
            } catch (e) {
                console.error(e);
            }
        }
    }
    
    async balanceOf(accountId) {
        console.log('balance of');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.balanceOf({ tokenOwner: account.publicKey });
            console.log("balance:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async totalSupply() {
        console.log('totalSupply');
        try {
            const response = await this.ownerAccount.contract.totalSupply({ });
            console.log("totalSupply:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async mint(accountId, value) {
        console.log('mint');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.mint({ tokens: value });
            console.log("mint:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async burn(accountId, value) {
        console.log('burn');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.burn({ tokens: value });
            console.log("burn:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async transfer(fromAccountId, toAccountId, value) {
        console.log('transfer');
        const fromAccount = this.accountsMap.get(fromAccountId);
        const toAccount = this.accountsMap.get(toAccountId);
        try {
            const response = await fromAccount.contract.transfer({to: toAccount.publicKey, tokens: value});
            console.log("transfer:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async addModerator(accountId) {
        console.log('addModerator');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await this.ownerAccount.contract.addModerator({ moderator: account.publicKey });
            console.log("addModerator:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async removeModerator(accountId) {
        console.log('removeModerator');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await this.ownerAccount.contract.removeModerator({ moderator: account.publicKey });
            console.log("removeModerator:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
}

async function init () {
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

    let users = ['Theresa', 'Eleanor Pena', 'Courtney Henry', 'Leslie Alexander', 'Deveon Lane'];
    const near = Near.getInstance();
    let accountsMap = await near.createAccounts(5);

    const accounts = Array.from(accountsMap);
    console.log("user:" + JSON.stringify(accounts[0][0]));
    console.log("user:" + JSON.stringify(accounts[2][0]));

    console.log("accounts created: " + JSON.stringify(accountsMap));
    let i = 0;
    for (const [accountId, account] of accountsMap.entries()) {
        try {
            let type;
            if  (i == 0) {
              type = 'owner';
            } else { 
              type = 'user';
            }
            await client.query(`\
                INSERT INTO users (user_name, account_id, public_key, user_type, balance) \
                VALUES ('${users[i]}', '${accountId}', '${account.publicKey}', '${type}', 5000)\
                `);
        } catch (e) {
            console.error(e);
        }
        i++;
    }
/*
    await client.query("\
        INSERT INTO users (user_name, account_id, public_key, user_type, balance) \
        VALUES ('Theresa', 'account_id', '1234567890123456789', 'owner', 5000),\
               ('Eleanor Pena', '1234567890123456789', 'moderator', 0),\
               ('Courtney Henry', '1234567890123456789', 'user', 0),\
               ('Leslie Alexander', '1234567890123456789', 'user', 0),\
               ('Deveon Lane', '1234567890123456789', 'user', 0);\
        ");
*/
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

async function list_users_table (req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT * FROM users");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

async function list_purchased_table(req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT * FROM purchased_items");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

async function get_users(req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT user_name, user_type, balance FROM users");
    client.release();

    //console.log(result.rows);
    res.json(result.rows);
};

async function add_moderator(req, res, next) {
    const client = await pool.connect()
    var result = await client.query(`\
        UPDATE users \
        SET user_type = 'moderator' \
        WHERE user_name = '${req.body.user_name}';\
        `);
    client.release();
    
    console.log("Moderator " + JSON.stringify(req.body.user_name) + " was added");
    res.status(200).send();
};

async function remove_moderator(req, res, next) {
    const client = await pool.connect()
    var result = await client.query(`\
        UPDATE users \
        SET user_type = 'user' \
        WHERE user_name = '${req.body.user_name}';\
        `);
    client.release();

    console.log("Moderator " + JSON.stringify(req.body.user_name) + " was removed");
    res.status(200).send();
};

async function get_balance(req, res, next) {
    const client = await pool.connect()
    var result = await client.query(`SELECT balance FROM users WHERE user_name = '${req.query['user_name']}'`);
    client.release();

    console.log('Balance is' + JSON.stringify(result.rows[0].balance));
    res.status(200).send(JSON.stringify(result.rows[0].balance));
};

async function start_benchmark(req, res, next) {
};

async function get_benchmark_progress(req, res, next) {
};

async function get_benchmark_result(req, res, next) {
};

async function mint(req, res, next) {
    const client = await pool.connect()
    var result = await client.query(`\
        UPDATE users \
        SET balance = balance + ${req.body.value} \
        WHERE user_name = '${req.body.user_name}';\
        `);
    client.release();

    console.log('Mint ' + JSON.stringify(req.body.user_name) + ' with value' + JSON.stringify(req.body.value));
    res.status(200).send('Mint ' + JSON.stringify(req.body.user_name) + ' with value ' + JSON.stringify(req.body.value));
};

async function transfer(req, res, next) {
    // TODO: check if balance is greater or equal to value
    const client = await pool.connect();
    var query = await client.query(`SELECT balance FROM users WHERE user_name = '${req.body.user_name1}'`);
    if (query.rows[0].balance >= req.body.value) {
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
        console.log('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + 'to' + JSON.stringify(req.body.user_name2));
        res.status(200).send('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + 'to' + JSON.stringify(req.body.user_name2));
    } else {
        res.status(100).send("Transfer failed: balance is too low");
    }
    client.release();    
};

async function purchase(req, res, next) {
    const client = await pool.connect();
    var price = await client.query(`SELECT price FROM items WHERE item_name = '${req.body.item_name}'`);
    var balance = await client.query(`SELECT balance FROM users WHERE user_name = '${req.body.user_name}'`);
    if (balance.rows[0].balance >= price.rows[0].price) {
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
        res.status(100).send("Purchase failed: balance is too low");
    }
    client.release(); 
};

async function get_user_items(req, res, next) {
    const client = await pool.connect();
    var result = await client.query(`SELECT item_name FROM purchased_items WHERE user_name = '${req.query['user_name']}'`);
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

async function get_all_items(req, res, next) {
    const client = await pool.connect();
    var result = await client.query("SELECT * FROM items");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const main = async _ => {
  await init();
}

console.log('call main');
main();
console.log('after main');


var express = require("express");
var cors = require('cors');
var app = express();
//var api = require("./api");
app.use(cors());

const swaggerJsDoc = require("swagger-jsdoc");
const swaggerUi = require("swagger-ui-express");

const port = process.env.PORT || 3000;


const swaggerOptions = {
  swaggerDefinition: {
    info: {
      version: "1.0.0",
      title: "NRB API",
      description: "NRM API Information",
      contact: {
        name: "Andreea Stefan"
      },
      servers: ["http://localhost:3000"]
    }
  },
  // ['.routes/*.js']
  apis: ["main.js"]
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);


app.use("/docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));
app.use(express.json());


/**
 * @swagger
 * /list_users_table:
 *  get:
 *    description: Get user from table 
 *    responses:
 *      '200':
 *        description: Users' table
 */
app.get("/list_users", list_users_table);

/**
 * @swagger
 * /list_purchased_table:
 *  get:
 *    description: Get purchased items from table 
 *    responses:
 *      '200':
 *        description: Purchase table
 */
app.get("/list_purchased", list_purchased_table);

/**
 * @swagger
 * /get_users:
 *  get:
 *    description: Get users list 
 *    responses:
 *      '200':
 *        description: User list
 */
app.get("/get_users", get_users);

/**
 * @swagger
 * /add_moderator:
 *  post:
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Add moderator
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *               type: string
 *             example:   # Sample object
 *               user_name: Theresa
 *  responses:
 *         200:
 *          description: Moderator was added
 */
app.post("/add_moderator", add_moderator);

/**
 * @swagger
 * /remove_moderator:
 *  delete:
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Remove user from moderator list
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *               type: string
 *             example:   # Sample object
 *               user_name: Deveon Lane
 *  responses:
 *         200:
 *          description: Moderator was removed
 */
app.delete("/remove_moderator", remove_moderator);

/**
 * @swagger
 * /get_balance:
 *  get:
 *    summary: Get balance
 *    parameters:
 *      - name: user_name
 *        in: query
 *        description: Username
 *        required: true
 *        schema:
 *          type: string
 *          format: string
 *          example:   # Sample object
 *               user_name: Leslie Alexander
 *    responses:
 *      '200':
 *        description: Balance successfuly received
 */
app.get("/get_balance", get_balance);

/**
 * @swagger
 * /start_benchmark:
 *  get:
 *    description: Start benchmark
 *    responses:
 *      '200':
 *        description: Benchmark Succesfuly started
 */
app.get("/start_benchmark", start_benchmark);

/**
 * @swagger
 * /get_benchmark_progress:
 *  get:
 *    description: Get benchmark progress
 *    responses:
 *      'value':
 *        description: Progress value
 */
app.get("/get_benchmark_progress", get_benchmark_progress);

/**
 * @swagger
 * /start_benchmark:
 *  get:
 *    description: Beanchmark result
 *    responses:
 *      '200':
 *        description: The result of the benchmarking process
 */
app.get("/get_benchmark_result", get_benchmark_result);

/**
 * @swagger
 * /mint:
 *  post:
 *    summary: Mint operation
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Mint user with value
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *                type: string
 *               value:
 *                 type: integer
 *             example:   # Sample object
 *               user_name: Eleanor Pena
 *               value: 10
 *  responses:
 *         200:
 *          description: Mint operation successful
 */
app.post("/mint", mint);

/**
 * @swagger
 * /transfer:
 *  post:
 *    summary: Transfer operation
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Transfer from a user to another
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name1:
 *                type: string
 *               user_name2:
 *                type: string
 *               value:
 *                type: integer
 *             example:   # Sample object
 *               user_name1: Theresa
 *               user_name2: Courtney Henry
 *               value: 10
 *  responses:
 *         200:
 *          description: Transfer operation successful
 */
app.post("/transfer", transfer);

/**
 * @swagger
 * /purchase:
 *  post:
 *    summary: Purchase item
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Purchase an item and add it to user's item list
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *                type: string
 *               item_name:
 *                type: string
 *             example:   # Sample object
 *               user_name: Theresa
 *               item_name: Diamond Award
 *  responses:
 *         200:
 *          description: Purchase operation successful
 */
app.post("/purchase", purchase);

/**
 * @swagger
 * /get_user_items:
 *  get:
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Get the item list of a user
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *               type: string
 *             example:   # Sample object
 *               user_name: Eleanor Pena
 *  responses:
 *         200:
 *          description: Get the item list of a user
 */
app.get("/get_user_items", get_user_items);

/**
 * @swagger
 * /get_all_items:
 *  get:
 *    description: Get the item list
 *    responses:
 *      '200':
 *        description: Get the item list
 */
app.get("/get_all_items", get_all_items);

/*
- get_users() - return user_name and type
- add_moderator(user_name)
- remove_moderator(user_name)
- get_balance(user_name)
- start_benchmark
    - get_benchmark_progress
    - get_benchmark_result
- mint(user_name, value)
- transfer(from, to)
- purchase(user_name, item_id)
- get_user_items(user_name)
- get_all_items
*/

app.listen(port, () => {
    console.log("Server running on port " + port);
   });