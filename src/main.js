import "regenerator-runtime/runtime";

import * as nearAPI from "near-api-js"
import getConfig from "./config"
import BN from "bn.js";
import {createTransaction} from "near-api-js/lib/transaction";
import {LocalAccountCreator} from "near-api-js/lib/account_creator";

let nearConfig = getConfig(process.env.NODE_ENV || "development");

// Connects to NEAR and provides `near`, `walletAccount` and `contract` objects in `window` scope
async function connect() {
    // ADD YOUR ACCOUNT HERE with a valid private key
    const account = {
        name: 'ionut.testnet',
        network: 'default',
        privateKey: "ed25519:5NwKMf7n9QjwVW1Yc5fotpfCTG874LDij5h7XMTbkrYbmoaF1kVjtx5RkkHTWPTG5ETNe7dA5eeYAHBmBMffG1BB"
    };

    // Generate a new keypair from privateKey
    const keypair = nearAPI.utils.key_pair.KeyPair.fromString(account.privateKey);

    //keystore instance
    let keyStore = new nearAPI.keyStores.InMemoryKeyStore();

    // await keyStore.setKey(nearConfig.networkId, account.name, random);
    await keyStore.setKey(nearConfig.networkId, account.name, keypair);

    // Initializing connection to the NEAR node.
    window.near = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));

    async function createNewTransaction(connObj) {
        // Fetch and decode latest block hash
        let networkStatus = await connObj.connection.connection.provider.status();
        let recentBlock = networkStatus.sync_info.latest_block_hash;
        let blockHash = nearAPI.utils.serialize.base_decode(recentBlock);

        let signer = await connObj.connection.connection.signer;
        let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');

        let args = {totalSupply: '1000000000000000000000000000000000000'};
        let serialized = Buffer.from(JSON.stringify(args));

        let actions = [
            nearAPI.transactions.functionCall('init', serialized, new BN('300000000000000'), new BN('1')),
        ];

        // Create transaction
        let transaction = nearAPI.transactions.createTransaction(account.name, connObj.keypair.publicKey, nearConfig.contractName, 3541, actions, blockHash);
        //sign transaction
        let [txHash, signedTx] = await nearAPI.transactions.signTransaction(transaction, signer, account.name, nearConfig.networkId);

        // Send transaction
        try {
            await connObj.connection.connection.provider.sendTransaction(signedTx);
        } catch (error) {
            let {type, message} = error;
            console.log(`[${type}]`, message);
        }
    }
    // // Initializing our contract APIs by contract name and configuration.
    // window.contract = await near.loadContract(nearConfig.contractName, {
    //     viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
    //     changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership'],
    //     sender: account.name
    // });

    // console.log(await window.contract.isModerator({moderator: 'abracadabra2.testnet'}))
    // console.log(await window.contract.addModerator({moderator: 'testionut-1.ionutdetest.testnet'}))
    // console.log(await window.contract.removeModerator({moderator: 'abracadabra2.testne'}))
    // console.log(await window.contract.addModerator({moderator: 'gu3.ionut.testnet'}))
    // console.log(await window.contract.init({initialOwner: account.name, totalSupply: '1000000000000000000000000000000000000'}))
    // console.log(await window.contract.approve({spender: 'test1.ionut.testnet', tokens: 10}));
    // console.log(await window.contract.balanceOf({tokenOwner: window.walletAccount.getAccountId()}))
    // console.log(await window.contract.transferOwnership({newOwner: window.walletAccount.getAccountId()}))
    // console.log(await window.contract.burn({tokens: '100'}));
    // console.log(await window.contract2.mint({tokens: '100'}));
    // console.log(await window.contract.totalSupply());

    // const promises = [];
    // const connections = [];
    //
    // let acc = await near.account(account.name);
    // let howMany = 0;
    // for (let i = 0; i < howMany; i++) {
    //     let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');
    //     await acc.addKey(randomKey.publicKey);
    //
    //     //keystore instance
    //     let keyStore = new nearAPI.keyStores.InMemoryKeyStore();
    //     await keyStore.setKey(nearConfig.networkId, account.name, randomKey);
    //
    //     // Initializing connection to the NEAR node.
    //     let connection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));
    //
    //     connections.push({randomKey, keyStore, connection});
    // }
    //
    // for (let i = 0; i < howMany; i++) {
    //     try {
    //         promises.push(createNewTransaction(connections[i]));
    //     } catch (e) {
    //         console.log(e);
    //     }
    // }
    // let tFor = performance.now();
    // Promise.all(promises).then((data) => {let tProgress = performance.now(); console.log("Call for " + howMany + " transaction took " + (tProgress - tFor) + " milliseconds.")}).catch((err) => console.log(err));

    let acc = await near.account(account.name);
    let howMany = 1;
    const connections = [];
    console.log("Call for " + howMany + " transactions starts now");
    for (let i = 0; i < howMany; i++) {
        let randomKey = nearAPI.utils.key_pair.KeyPair.fromRandom('ed25519');
        console.log(randomKey)
        await acc.addKey(randomKey.publicKey);
        let keypair = nearAPI.utils.key_pair.KeyPair.fromString(account.privateKey);
        console.log(keypair.getPublicKey().toString())
        //keystore instance
        let keyStore = new nearAPI.keyStores.InMemoryKeyStore();
        await keyStore.setKey(nearConfig.networkId, account.name, keypair);
        // Initializing connection to the NEAR node.
        let connection = await nearAPI.connect(Object.assign(nearConfig, {deps: {keyStore: keyStore}}));
        connections.push({keypair, keyStore, connection});
    }
    let connectionSlice = connections;
    let transactionBatch = 25;
    while (connectionSlice.length) {
        const tStart = performance.now();
        await Promise.all(connectionSlice.splice(0, transactionBatch).map(async (connection) => {
            await createNewTransaction(connection);
        }));
        let tEnd = performance.now();
        console.log("Call for " + transactionBatch + " transactions took " + (tEnd - tStart) + " milliseconds.");
    }
    window.walletAccount = new nearAPI.WalletAccount(window.near);
}

function updateUI() {
    if (!window.walletAccount.getAccountId()) {
        Array.from(document.querySelectorAll('.sign-in')).map(it => it.style = 'display: block;');
    } else {
        Array.from(document.querySelectorAll('.after-sign-in')).map(it => it.style = 'display: block;');
    }
}

// Log in user using NEAR Wallet on "Sign In" button click
document.querySelector('.sign-in .btn').addEventListener('click', () => {
    walletAccount.requestSignIn(nearConfig.contractName, 'NEAR token example');
});

document.querySelector('.sign-out .btn').addEventListener('click', () => {
    walletAccount.signOut();
    // TODO: Move redirect to .signOut() ^^^
    window.location.replace(window.location.origin + window.location.pathname);
});

window.nearInitPromise = connect()
    .then(updateUI)
    .catch(console.error);
