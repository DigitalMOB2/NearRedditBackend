var express = require("express");
var cors = require('cors');
var app = express();
var api = require("./api");
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
  apis: ["src/main.js"]
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);


api.init();

app.use("/docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));
app.use(express.json());


/**
 * @swagger
 * /list_users:
 *  get:
 *    description: Get users 
 *    responses:
 *      '200':
 *        description: Get users
 */
app.get("/list_users", api.list_users_table);

/**
 * @swagger
 * /list_purchased:
 *  get:
 *    description: Get purchased items 
 *    responses:
 *      '200':
 *        description: Purchase items
 */
app.get("/list_purchased", api.list_purchased_table);

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
 *               user_name: Theresa
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
 *               user_name: Deveon Lane
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
 *          example:   # Sample object
 *               Leslie Alexander
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
 *                type: integer
 *             example:   # Sample object
 *               user_name1: Theresa
 *               user_name2: Courtney Henry
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
 *               item_name:
 *                type: string
 *             example:   # Sample object
 *               user_name: Theresa
 *               item_name: Diamond Award
 *  responses:
 *         200:
 *          description: Purchase operation successful
 */
app.post("/purchase", api.purchase);

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
 *               Eleanor Pena
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