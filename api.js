
const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "near",
  password: "",
  port: "5432"
});

const init = async function () {
    const client = await pool.connect();
    await client.query("DROP TABLE IF EXISTS users, items, purchased_items;");

    await client.query("\
        CREATE TABLE IF NOT EXISTS users\
        (\
            user_name varchar(100) NOT NULL,\
            access_key varchar(100) NOT NULL,\
            user_type varchar(10) NOT NULL,\
            balance int, \
            CONSTRAINT PK_name PRIMARY KEY (user_name)\
        )");
    await client.query("\
        INSERT INTO users (user_name, access_key, user_type, balance) \
        VALUES ('Theresa', '1234567890123456789', 'owner', 5000),\
               ('Eleanor Pena', '1234567890123456789', 'moderator', 0),\
               ('Courtney Henry', '1234567890123456789', 'user', 0),\
               ('Leslie Alexander', '1234567890123456789', 'user', 0),\
               ('Deveon Lane', '1234567890123456789', 'user', 0);\
        ");

    await client.query("\
        CREATE TABLE IF NOT EXISTS items\
        (\
            item_name varchar(100) NOT NULL,\
            image_link varchar(100) NOT NULL,\
            price int \
        )");
    await client.query("\
        INSERT INTO items (item_name, image_link, price) \
        VALUES ('Silver Award', '1234567890123456789', 100),\
               ('Golden Award', '1234567890123456789', 500),\
               ('Diamond Award', '1234567890123456789', 1800);\
        ");

    await client.query("\
        CREATE TABLE IF NOT EXISTS purchased_items\
        (\
            user_name varchar(100) NOT NULL,\
            item_name varchar(100) NOT NULL\
        )");

   /* await client.query("\
        INSERT INTO purchased_items (user_name, item_name) \
        VALUES ('Theresa', 'Silver Award', 0),\
               ('Theresa', 'Golden Award', 0),\
               ('Theresa', 'Diamond Award', 0),\
               ('Eleanor Pena', 'Silver Award', 0),\
               ('Eleanor Pena', 'Golden Award', 0),\
               ('Eleanor Pena', 'Diamond Award', 0),\
               ('Courtney Henry', 'Silver Award', 0),\
               ('Courtney Henry', 'Golden Award', 0),\
               ('Courtney Henry', 'Diamond Award', 0),\
               ('Leslie Alexander', 'Silver Award', 0),\
               ('Leslie Alexander', 'Golden Award', 0),\
               ('Leslie Alexander', 'Diamond Award', 0),\
               ('Deveon Lane', 'Silver Award', 0),\
               ('Deveon Lane', 'Golden Award', 0),\
               ('Deveon Lane', 'Diamond Award', 0);\
        ");*/
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
    var result = await client.query("SELECT user_name, user_type FROM users");
    client.release();

    console.log(result.rows);
    res.json(result.rows);
};

const add_moderator = async function (req, res, next) {
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

const remove_moderator = async function (req, res, next) {
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

const get_balance = async function (req, res, next) {
    const client = await pool.connect()
    var result = await client.query(`SELECT balance FROM users WHERE user_name = '${req.query['user_name']}'`);
    client.release();

    console.log('Balance is' + JSON.stringify(result.rows[0].balance));
    res.status(200).send(JSON.stringify(result.rows[0].balance));
};

const start_benchmark = async function (req, res, next) {
};

const get_benchmark_progress = async function (req, res, next) {
};

const get_benchmark_result = async function (req, res, next) {
};

const mint = async function (req, res, next) {
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

const transfer = async function (req, res, next) {
    // TODO: check if balance is greater or equal to value
    const client = await pool.connect()
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
    client.release();

    console.log('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + 'to' + JSON.stringify(req.body.user_name2));
    res.status(200).send('Transfer ' + JSON.stringify(req.body.value) + ' from ' + JSON.stringify(req.body.user_name1) + 'to' + JSON.stringify(req.body.user_name2));
};

const purchase = async function (req, res, next) {
    const client = await pool.connect();
    var price = await client.query(`SELECT price FROM items WHERE item_name = '${req.body.item_name}'`);
    //console.log(price.rows[0].price);
    // TODO: check if balance is greater or equal to price.rows[0].price
    var result = await client.query(`\
        INSERT INTO purchased_items \
        VALUES ('${req.body.user_name}', '${req.body.item_name}');\
        `);
    var result2 = await client.query(`\
        UPDATE users \
        SET balance = balance - ${price.rows[0].price} \
        WHERE user_name = '${req.body.user_name}';\
        `);
    client.release();

    console.log('User ' + JSON.stringify(req.body.user_name) + ' bought ' + JSON.stringify(req.body.item_name) + ' for price ' + JSON.stringify(price.rows[0].price));
    res.status(200).send('User ' + JSON.stringify(req.body.user_name) + ' bought ' + JSON.stringify(req.body.item_name) + ' for price ' + JSON.stringify(price.rows[0].price));
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
