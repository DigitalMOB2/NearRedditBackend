const regenerator = require("regenerator-runtime/runtime");
const nearAPI = require("near-api-js");
const getConfig = require("./src/config");
const BN = require ("bn.js");
const {createTransaction} = require("near-api-js/lib/transaction");
//const { Context, u128 } = require("near-sdk-as");

let nearConfig = getConfig(process.env.NODE_ENV || "development");
let nearConnection;
let walletAccount;
let contract;
let nearLib;
let contractOwner;

// Account info
const account = {
    name: 'andreea.testnet',
    network: 'default',
    privateKey: "ed25519:3mYSHoTEaGJZMqBwEZdW6oGXCtRJh8egeS8NrceSeCgB59na2A7JwvmFqTLAhiwvuR2hNf9MbTKv4oDwdva3bfXa"
};

// Connects to NEAR and provides `near`, `walletAccount` and `contract` objects in `window` scope
async function connect() {
    // keystore instance
    let keyStore = new nearAPI.keyStores.InMemoryKeyStore();

    // Generate a new keypair from privateKey
    const keypair = nearAPI.utils.key_pair.KeyPair.fromString(account.privateKey);

    // await keyStore.setKey(nearConfig.networkId, account.name, random);
    await keyStore.setKey(nearConfig.networkId, account.name, keypair);

    // initializing connection to the NEAR node
    nearConnection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));
  
    /*
    // get signer public key
    let signer = new nearAPI.InMemorySigner(keyStore);
    //let publicKey = await signer.getPublicKey(account.name, nearConfig.networkId);
    //console.log("Public Key = ", publicKey);
    //let newPublicKey = await signer.createKey(account.name, nearConfig.networkId);
    //console.log("New Public Key = ", newPublicKey);

    console.log("KeyPair Public key = " + keypair.getPublicKey());

   // let acc = await nearConnection.account(account.name);
    //await acc.addKey(newPublicKey);

    const publicKey = await nearConnection.connection.signer.getPublicKey(account.name, nearConfig.networkId);
    console.log("Public Key = ", publicKey.toString());
*/
/*
    console.log('signer = ' + nearConnection.connection.signer);

    // add random access key
    let acc = await nearConnection.account(account.name);
    let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');
    await acc.addKey(randomKey.publicKey);

    console.log(keypair.getPublicKey().toString());

    // Initializing connection to the NEAR node.
    let connection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));

    // init wallet
    //walletAccount = new nearAPI.WalletAccount(near);
    */
}

async function loadContract() {
    console.log('nearConfig', nearConfig);

    contract = await nearConnection.loadContract(nearConfig.contractName, {
        // NOTE: This configuration only needed while NEAR is still in development
        viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
        changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership'],
        sender: account.name
    });
}

async function initContract() {
    //Context.setSigner_account_id(contractOwner);
    // await contract.init({ initialOwner: account.name, totalSupply: '1000000'});
    let args = { totalSupply: '1000000000000000000000000000000000000' };
    let serialized = Buffer.from(JSON.stringify(args));
    nearAPI.transactions.functionCall('init', serialized, new BN('300000000000000'), new BN('1'));
}

async function transfer(toUser, value) {
    //Example: transfer(u128.fromString('100'));
    await contract.transfer({ to: toAccessKey, tokens: value });
}

async function mint(value) {
    //Example: mint(u128.fromString('100'));
    let args = { tokens: value };
    let serialized = Buffer.from(JSON.stringify(args));
    nearAPI.transactions.functionCall('mint', serialized, new BN('300000000000000'), new BN('1'));
    //await contract.mint({ tokens: value });
}

async function burn(value) {
    await contract.mint({ tokens: value });
}

async function addModerator(name) {
    await contract.addModerator({ moderator: name });
}

async function removeModerator(name) {
    await contract.removeModerator({ moderator: name });
}

async function getBalance() {
    return await contract.balanceOf({tokenOwner: account.name});
}

async function createNewTransaction(connObj) {
    // Fetch and decode latest block hash
    let networkStatus = await connObj.connection.connection.provider.status();
    let recentBlock = networkStatus.sync_info.latest_block_hash;
    let blockHash = nearAPI.utils.serialize.base_decode(recentBlock);

    let signer = await connObj.connection.connection.signer;

/*       let args = {initialOwner: account.name, totalSupply: '100'};
    let serialized = Buffer.from(JSON.stringify(args));

    let actions = [
        nearAPI.transactions.functionCall('init', serialized, new BN('300000000000000'), new BN('1')),
    ];
*/
    let args = {tokens: '100'};
    let serialized = Buffer.from(JSON.stringify(args));

    let actions = [
        nearAPI.transactions.functionCall('mint', serialized, new BN('300000000000000'), new BN('1'))
    ];

    //const accessKey = await nearConnection.account.findAccessKey()
    //if (!accessKey) {
        // Create transaction
        console.log("Transaction nonce = " + connObj.randomKey.nonce);
        let transaction = nearAPI.transactions.createTransaction(account.name, connObj.randomKey.publicKey, nearConfig.contractName, ++connObj.randomKey.nonce, actions, blockHash);
        //sign transaction
        let [txHash, signedTx] = await nearAPI.transactions.signTransaction(transaction, signer, account.name, nearConfig.networkId);

        // Send transaction
        try {
            await connObj.connection.connection.provider.sendTransaction(signedTx);
        } catch (error) {
            let {type, message} = error;
            console.log(`[${type}]`, message);
        }
    //}
}

async function createAccessKeys(numberOfKeys) {
    let acc = await nearConnection.account(account.name);
    const accessKeys = [];
    for (let i = 0; i < numberOfKeys; i++) {
        let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');
        await acc.addKey(randomKey.publicKey);
        accessKeys.push(randomKey);
    }
    return accessKeys;
}

async function sendTransactions() {
    let acc = await nearConnection.account(account.name);
    let howMany = 10;
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
    let transactionBatch = 10;
    //const tStart = performance.now();
    while (connectionSlice.length) {
        await Promise.all(connectionSlice.splice(0, transactionBatch).map(async(connection) => {
            const power = await createNewTransaction(connection);
        }));
    } 
    //let tEnd = performance.now();
    //console.log("Call for " + howMany + " transactions took " + (tEnd - tStart) + " milliseconds.");
}

module.exports = {
    connect,
    loadContract,
    initContract,
    transfer,
    mint,
    burn,
    addModerator,
    removeModerator,
    getBalance,
    createNewTransaction,
    createAccessKeys,
    sendTransactions
}

const mainLoop = async _ => {
    await connect();
    //await createAccessKeys(1);
    //await loadContract();
    await initContract();
    
    await mint('100'); //u128.fromString('100');
    await sendTransactions();
};
mainLoop();