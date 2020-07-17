

var express = require("express");
var app = express();
var api = require("./api");

api.init();

app.get("/login", api.login); //login?user=<userName>

app.get("/get_users", api.get_users);

app.post("/add_moderator", api.add_moderator);

app.post("/remove_moderator", api.remove_moderator);

app.get("/get_balance", api.get_balance);

app.get("/start_benchmark", api.start_benchmark);

app.get("/get_benchmark_progress", api.get_benchmark_progress);

app.get("/get_benchmark_result", api.get_benchmark_result);

app.post("/mint", api.mint);

app.get("/transfer", api.transfer);

app.get("/purchase", api.purchase);

app.get("/add_item", api.add_item);

app.get("/get_user_items", api.get_user_items);

app.get("/get_all_items", api.get_all_items);


/*
- login(user_name)
- get_users()
- add_moderator(user_name)
- remove_moderator(user_name)
- get_balance(user_name)
- start_benchmark
    - get_benchmark_progress
    - get_benchmark_result
- mint(user_name, value)
- transfer(from, to)
//- burn(user_name, value)
- purchase(user_name, value, item_id)
- add_item(item_name, value, image_link)
- get_user_items(user_name)
- get_all_items
*/

app.listen(3000, () => {
    console.log("Server running on port 3000");
   });