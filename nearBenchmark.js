const { Contract, KeyPair, connect } = require('near-api-js');
const { InMemoryKeyStore, MergeKeyStore, UnencryptedFileSystemKeyStore } = require('near-api-js').keyStores;
const { parseNearAmount } = require('near-api-js').utils.format;
const nearAPI = require("near-api-js");

// Account info
const account = {
    name: 'reddit.testnet',
    network: 'default',
    privateKey: "ed25519:4mc4ukS9iJv84n9gz5x2iJWqH1vw8tzY7e35HAUp6xThvXd3hgZ6e8ZmXgkciyVJ5GwNT6W3x8kinKM8Z8QmFrpt"
};

const NUM_ACCOUNTS = 4;

async function createAccounts() {
    const contractConfig = {
        viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
        changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership'],
    }

    const config = require('./src/config')(process.env.NODE_ENV || 'development');

    // keystore instance
    const keyStore = new InMemoryKeyStore();

    // generate a new keyPair from privateKey
    const accountkeyPair = nearAPI.utils.key_pair.KeyPair.fromString(account.privateKey);
    console.assert(accountkeyPair.toString() === account.privateKey, 'the key pair does not match expected value');

    // set key to keyStore
    await keyStore.setKey(config.networkId, account.name, accountkeyPair);

    // initialize connection to the NEAR node
    const near = await connect(Object.assign(config, {deps: {keyStore: keyStore}}));

    // Fetch access key nonce for given key
    const response = await near.connection.provider.query(`access_key/${account.name}`, '');
    const key = response.keys.filter(k => k.public_key === accountkeyPair.publicKey.toString())[0];
    console.assert(key.access_key.permission === 'FullAccess');
    let nonce = key.access_key.nonce; // will increment with each use of the key
    console.log("Nonce = " + nonce);
    accountkeyPair.nonce = nonce;

    const sleep = (time) => new Promise((resolve) => setTimeout(resolve, time));

    console.log('Setting up and deploying contract');
    const masterAccountName = `test-${Date.now()}.testnet`;
    const contractName = masterAccountName;
    const keyPair = KeyPair.fromRandom('ed25519');
    await keyStore.setKey(config.networkId, masterAccountName, keyPair);
    const masterAccount = await near.createAccount(masterAccountName, keyPair.publicKey.toString());
    await masterAccount.deployContract(require('fs').readFileSync('./out/main.wasm'));

    console.log('Creating accounts')
    console.time('create accounts');
    const accountPrefix = `user-${Date.now()}`;
    let contracts = [];
    for (let i = 0; i < NUM_ACCOUNTS; i++) {
        const accountId = `${accountPrefix}-${i}.${masterAccountName}`;
        const keyPair = KeyPair.fromRandom('ed25519');
        await keyStore.setKey(config.networkId, accountId, keyPair);
        await masterAccount.createAccount(accountId, keyPair.publicKey, parseNearAmount('0.1'));
        const account = await near.account(accountId);
        //const contract = new Contract(account, contractName, contractConfig);
    }
    console.timeEnd('create accounts');
}
const main = async _ => {
    await createAccounts();
};
main();
