
const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "near",
  password: "1234",
  port: "5432"
});

/*
(async function () {
    const client = await pool.connect()
    await client.query("DROP TABLE users")
    client.release()
})();
*/

const init = async function () {
    const client = await pool.connect()
    await client.query("\
        CREATE TABLE IF NOT EXISTS users\
        (\
            user_name varchar(100) NOT NULL,\
            access_key varchar(100) NOT NULL,\
            user_type varchar(10) NOT NULL,\
            CONSTRAINT PK_name PRIMARY KEY (user_name)\
        )")
    client.release()
};

const login = async function (req, res, next) {
    console.log(req.query['user']);

    // TODO: check if exists 
    // if not add it to DB
    const client = await pool.connect()
    await client.query(`\
        INSERT INTO users (user_name, access_key, user_type) \
        VALUES ('${req.query['user']}', '1234567890123456789', 'owner')\
        `)
    client.release();
    
    res.status(200).send('Added user ' + req.query['user']);
    console.log();
   };

const get_users = async function (req, res, next) {
    const client = await pool.connect()
    var result = await client.query("SELECT * FROM users");
    client.release()

    console.log(result.rows);
    res.json(result.rows);
};

const add_moderator = async function (req, res, next) {
};

const remove_moderator = async function (req, res, next) {
};

const get_balance = async function (req, res, next) {
};

const start_benchmark = async function (req, res, next) {
};

const get_benchmark_progress = async function (req, res, next) {
};

const get_benchmark_result = async function (req, res, next) {
};

const mint = async function (req, res, next) {
};

const transfer = async function (req, res, next) {
};

const purchase = async function (req, res, next) {
};

const add_item = async function (req, res, next) {
};

const get_user_items = async function (req, res, next) {
};

const get_all_items = async function (req, res, next) {
};

module.exports = {
    init,
    login,
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
    add_item,
    get_user_items,
    get_all_items
  }
