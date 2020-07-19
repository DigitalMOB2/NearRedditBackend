var express = require("express");
var app = express();
var api = require("./api");

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


api.init();

app.use("/docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));
app.use(express.json());

/**
 * @swagger
 * /login:
 *  get:
 *    description: User login //login?user=<userName>
 *    parameters:
 *      - name: user_name
 *        in: query
 *        description: Username
 *        required: true
 *        schema:
 *          type: string
 *          format: string
 *          example:   # Sample object
 *               user_name: user1
 *    responses:
 *      '200':
 *        description: Login succesful
 */

 /**
 * @swagger
 * /login:
 *  get:
 *    description: Login with username
 *    parameters:
 *    - in: query
 *      name: user_name
 *      description: Username or click on "http://localhost:3000/login?user=user1"
 *      required: true
 *      schema:
 *             type: string
 *             example:   # Sample object
 *               user_name: user1
 *  responses:
 *         200:
 *          description: Moderator was added
 */
app.get("/login", api.login); //login?user=<userName>

/**
 * @swagger
 * /get_users:
 *  get:
 *    description: Get users list 
 *    responses:
 *      '200':
 *        description: User list
 */
app.get("/get_users", api.get_users);

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
 *               user_name: user1
 *  responses:
 *         200:
 *          description: Moderator was added
 */
app.post("/add_moderator", api.add_moderator);

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
 *               user_name: user1
 *  responses:
 *         200:
 *          description: Moderator was removed
 */
app.delete("/remove_moderator", api.remove_moderator);

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
 *    responses:
 *      '200':
 *        description: Balance successfuly received
 */
app.get("/get_balance", api.get_balance);

/**
 * @swagger
 * /start_benchmark:
 *  get:
 *    description: Start benchmark
 *    responses:
 *      '200':
 *        description: Benchmark Succesfuly started
 */
app.get("/start_benchmark", api.start_benchmark);

/**
 * @swagger
 * /get_benchmark_progress:
 *  get:
 *    description: Get benchmark progress
 *    responses:
 *      'value':
 *        description: Progress value
 */
app.get("/get_benchmark_progress", api.get_benchmark_progress);

/**
 * @swagger
 * /start_benchmark:
 *  get:
 *    description: Beanchmark result
 *    responses:
 *      '200':
 *        description: The result of the benchmarking process
 */
app.get("/get_benchmark_result", api.get_benchmark_result);

/**
 * @swagger
 * /mint:
 *  post:
 *    summary: Mint operation
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Mint user and value
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *                type: string
 *               value:
 *                 type: integer
 *             example:   # Sample object
 *               user_name: user1
 *               value: 10
 *  responses:
 *         200:
 *          description: Mint operation successful
 */
app.post("/mint", api.mint);

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
 *                 type: integer
 *             example:   # Sample object
 *               user_name1: user1
 *               user_name2: user2
 *               value: 10
 *  responses:
 *         200:
 *          description: Transfer operation successful
 */
app.post("/transfer", api.transfer);

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
 *               item_id:
 *                type: integer
 *               value:
 *                type: integer
 *             example:   # Sample object
 *               user_name: user1
 *               item_id: 1
 *               value: 20
 *  responses:
 *         200:
 *          description: Purchase operation successful
 */
app.get("/purchase", api.purchase);

/**
 * @swagger
 * /add_item:
 *  post:
 *    summary: Add item
 *    parameters:
 *    - in: "body"
 *      name: "body"
 *      description: Add an item to item list
 *      required: true
 *      schema:
 *             type: object
 *             properties:
 *               user_name:
 *                type: string
 *               item_link:
 *                type: string
 *               value:
 *                type: integer
 *             example:   # Sample object
 *               user_name: user1
 *               item_link: http://link?
 *               value: 20
 *  responses:
 *         200:
 *          description: Item was successfully added
 */
app.get("/add_item", api.add_item);

/**
 * @swagger
 * /get_user_items:
 *  post:
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
 *               user_name: user1
 *  responses:
 *         200:
 *          description: Get the item list of a user
 */
app.get("/get_user_items", api.get_user_items);

/**
 * @swagger
 * /get_all_items:
 *  get:
 *    description: Get the item list
 *    responses:
 *      '200':
 *        description: Get the item list
 */
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
- purchase(user_name, item_id, value)
- add_item(item_name, image_link, value)
- get_user_items(user_name)
- get_all_items
*/

app.listen(port, () => {
    console.log("Server running on port " + port);
   });