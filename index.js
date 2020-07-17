//var pgp = require('pg-promise')(/* options */)
//var db = pgp('postgres://postgres:1234@localhost:5432/near')

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
(async function () {
    const client = await pool.connect()
    await client.query("CREATE TABLE IF NOT EXISTS users\
    (\
        user_name varchar(100) NOT NULL,\
        access_key varchar(100) NOT NULL,\
        user_type varchar(10) NOT NULL,\
        CONSTRAINT PK_name PRIMARY KEY (user_name)\
    )")
    client.release()
})();

var express = require("express");
var app = express();
app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/login", (req, res, next) => { //login?user=<userName>
    //res.json(["Tony","Lisa","Michael","Ginger","Food"]);
    console.log(req.query['user']);

    (async function () {
        const client = await pool.connect()
        await client.query(`INSERT INTO users (user_name, access_key, user_type) VALUES ('${req.query['user']}', '1234567890123456789', 'owner')`)
        client.release();
        
        console.log('Added user ' + req.query['user']);
    })();
  
    // check if exists 
    // if not add it to DB
   });

app.get("/users", (req, res, next) => { //login?user=<userName>
    (async function () {
        const client = await pool.connect()
        var result = await client.query("SELECT * FROM users");
        client.release()

        console.log(result.rows);
        res.json(result.rows);
    })();
});



