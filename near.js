const regenerator = require("regenerator-runtime/runtime");
const nearAPI = require("near-api-js");
const getConfig = require("./src/config");
const BN = require("bn.js");
const base64 = require("base-64");
const {createTransaction} = require("near-api-js/lib/transaction");
const { get_balance } = require("./api");


let nearConfig = getConfig(process.env.NODE_ENV || "development");
let nearConnection;
let nearLib;

// Account info
const account = {
    name: 'reddit.testnet',
    network: 'default',
    privateKey: "ed25519:4mc4ukS9iJv84n9gz5x2iJWqH1vw8tzY7e35HAUp6xThvXd3hgZ6e8ZmXgkciyVJ5GwNT6W3x8kinKM8Z8QmFrpt"
};

// Connects to NEAR and provides `near`, `walletAccount` and `contract` objects in `window` scope
async function connect() {
    // keystore instance
    let keyStore = new nearAPI.keyStores.InMemoryKeyStore();

    // generate a new keyPair from privateKey
    const keyPair = nearAPI.utils.key_pair.KeyPair.fromString(account.privateKey);
    console.assert(keyPair.toString() === account.privateKey, 'the key pair does not match expected value');

    // set key to keyStore
    await keyStore.setKey(nearConfig.networkId, account.name, keyPair);

    // initialize connection to the NEAR node
    nearConnection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));

    return {randomKey: keyPair, keyStore: keyStore, connection: nearConnection};
}

async function initContract(value) {
    connObj = await connect();
    await callTransaction('init', {totalSupply: value}, connObj);
}

async function transfer(toUserName, value) {
    connObj = await connect();
    await callTransaction('transfer', {to: toUserName, tokens: value}, connObj);
}
    
async function mint(value) {
    connObj = await connect();
    await callTransaction('mint', {tokens: value}, connObj);
}

async function burn(value) {
    connObj = await connect();
    await callTransaction('burn', {tokens: value}, connObj);
}

async function addModerator(userName) {
    connObj = await connect();
    await callTransaction('addModerator', {moderator: userName}, connObj);
}

async function removeModerator(userName) {
    connObj = await connect();
    await callTransaction('removeModerator', {moderator: userName}, connObj);
}

async function balanceOf() {
    connObj = await connect();
    let result = await callTransaction('balanceOf', {tokenOwner: account.name}, connObj);
    console.log("result = ", base64.decode(result.status.SuccessValue));
}

async function totalSupply() {
    connObj = await connect();
    let result = await callTransaction('totalSupply', {}, connObj);
    console.log("result = ", base64.decode(result.status.SuccessValue));
}

async function callTransaction(methodName, args, connObj) {
    // fetch and decode latest block hash
    let networkStatus = await connObj.connection.connection.provider.status();
    let recentBlock = networkStatus.sync_info.latest_block_hash;
    let blockHash = nearAPI.utils.serialize.base_decode(recentBlock);

    // Fetch access key nonce for given key
    const response = await connObj.connection.connection.provider.query(`access_key/${account.name}`, '');
    const key = response.keys.filter(k => k.public_key === connObj.randomKey.publicKey.toString())[0];
    console.assert(key.access_key.permission === 'FullAccess');
    let nonce = key.access_key.nonce; // will increment with each use of the key
    console.log("Nonce = " + nonce);

    // serialize actions
    let serialized = Buffer.from(JSON.stringify(args));
    let actions = [
        nearAPI.transactions.functionCall(methodName, serialized, new BN('300000000000000'), new BN('1')),
    ];

    // create transaction
    console.log("Transaction nonce = " + nonce);
    let transaction = nearAPI.transactions.createTransaction(account.name, connObj.randomKey.publicKey, nearConfig.contractName, ++nonce, actions, blockHash);

    // sign transaction
    let signer = await connObj.connection.connection.signer;
    let [txHash, signedTx] = await nearAPI.transactions.signTransaction(transaction, signer, account.name, nearConfig.networkId);

    // send transaction
    let receipt;
    try {
        receipt = await connObj.connection.connection.provider.sendTransaction(signedTx);
    } catch (error) {
        let {type, message} = error;
        console.log(`[${type}]`, message);
        
        switch (type) {
            case 'InvalidTxError::Expired':
            console.log('[ FIX --> ] grab a more recent block hash')
            break;
        
            case 'InvalidTxError::InvalidNonce':
            console.log('[ FIX --> ] increment the nonce')
            break;
        
            default:
            break;
        }
    }

    console.log(JSON.stringify(receipt, null, 2));
    return receipt;
}

async function addAccessKey(nonce) {

    let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');

    console.log('randomKey.publicKey = ' + randomKey.publicKey);
    
    return randomKey.publicKey;
}

async function sendTransactions() {
    let acc = await nearConnection.account(account.name);
    let howMany = 1;
    const connections = [];
 /*   let transactionBatch = 100;
    for (let j = 0; j < howMany; j++) {
        const promises = [];
        const connections = [];*/
        for (let i = 0; i < howMany; i++) {
            let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');
            randomKey.nonce = 0;
            await acc.addKey(randomKey.publicKey);

            //keystore instance
            let keyStore = new nearAPI.keyStores.InMemoryKeyStore();
            await keyStore.setKey(nearConfig.networkId, account.name, randomKey);

            // Initializing connection to the NEAR node.
            let connection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));

            connections.push({randomKey, keyStore, connection});
        }
/*
        let tFor = performance.now();
        for (let i = 0; i < transactionBatch; i++) {
            try {
                promises.push(createNewTransaction(connections[i]));
            } catch (e) {
                console.log(e);
            }
        }
        await Promise.all(promises).then((data) => {let tProgress = performance.now(); console.log("Call for " + howMany + " transaction took " + (tProgress - tFor) + " milliseconds.")}).catch((err) => console.log(err));
    } 
    */

    let connectionSlice = connections;
    let transactionBatch = 1;
    //const tStart = performance.now();
    while (connectionSlice.length) {
        await Promise.all(connectionSlice.splice(0, transactionBatch).map(async(connection) => {
            let args = { tokenOwner: account.name };
            //let args = { tokens: value };
            let serialized = Buffer.from(JSON.stringify(args));
            let actions = [nearAPI.transactions.functionCall('balanceOf', serialized, new BN('300000000000000'), new BN('1'))];
            //let actions = [nearAPI.transactions.functionCall('burn', serialized, new BN('300000000000000'), new BN('1'))];
            const power = await createNewTransaction(connection, actions);
        }));
    } 
    //let tEnd = performance.now();
    //console.log("Call for " + howMany + " transactions took " + (tEnd - tStart) + " milliseconds.");
}

module.exports = {
    connect,
    initContract,
    transfer,
    mint,
    burn,
    addModerator,
    removeModerator,
    balanceOf,
    totalSupply,
    addAccessKey,
    sendTransactions
}

const main = async _ => {
    //let publicKey = await addAccessKey(49810);
    await connect();
   // await totalSupply();
    await totalSupply();
    await burn('37');
    await totalSupply();

   // await addModerator('Leslie Alexander');
    //await removeModerator('Leslie Alexander');
   // await mint('5840');
};
main();