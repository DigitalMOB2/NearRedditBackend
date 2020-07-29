const { Contract, KeyPair, connect } = require('near-api-js');
const { InMemoryKeyStore, MergeKeyStore, UnencryptedFileSystemKeyStore } = require('near-api-js').keyStores;
const { parseNearAmount } = require('near-api-js').utils.format;

const config = require('./config')(process.env.NODE_ENV || 'ci');


const NUM_ACCOUNTS = 2;
const TRANSACTIONS_PER_ACCOUNT = 10;

class Benchmark {
    constructor() {
        this.ownerAccount = null;
        this.accountsMap = new Map();
        this.init = false;
        this.running = false;
        this.tps = 0;
        this.progress = 0;
        this.gas = 0;
    }

    static getInstance() {
        if (!this.instance) {
            this.instance = new Benchmark();
        }

        return this.instance;
    }

    getTps() {
        return this.tps;
    }

    getProgress() {
        return this.progress;
    }

    async retrieveGasPrice() {
        const axios = require('axios');
        let gasPrice = 0;

        try {
            const response = await axios.post(config.nodeUrl, {
                jsonrpc: '2.0',
                method: 'gas_price',
                params: [null],
                id: 'dontcare'
            });

            console.log('gas_price: ' + JSON.stringify(response.data));

            if (response.data.result && response.data.result.gas_price) {
                gasPrice = parseInt(response.data.result.gas_price, 10);
            }

        }
        catch (e) {
            console.error(e);
        }

        return gasPrice;
    }

    getGas() {
        return this.gas;
    }

    async createBenchmarkAccounts() {
        this.init = false;
        this.running = false;
        this.ownerAccount = null;
        this.accountsMap = new Map();

        const contractConfig = {
            viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
            changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership']
        }

        const keyStore = new MergeKeyStore([
            new InMemoryKeyStore(),
            new UnencryptedFileSystemKeyStore('./neardev')
        ]);
        const near = await connect({ ...config, keyStore });

        const sleep = (time) => new Promise((resolve) => setTimeout(resolve, time));

        console.log('Setting up and deploying contract');
        const masterAccountName = `near-reddit-benchmark-master-${Date.now()}`;
        const contractName = masterAccountName;
        const keyPair = KeyPair.fromRandom('ed25519');
        await keyStore.setKey(config.networkId, masterAccountName, keyPair);
        const masterAccount = await near.createAccount(masterAccountName, keyPair.publicKey.toString());
        await masterAccount.deployContract(require('fs').readFileSync('./out/main.wasm'));

        const masterAccountAcc = await near.account(masterAccountName);
        const masterAccountContract = new Contract(masterAccountAcc, contractName, contractConfig);

        this.ownerAccount = {
            accountId: masterAccountName,
            publicKey: '1' + keyPair.publicKey.toString().substring(8),
            contract: masterAccountContract
        };

        this.accountsMap.set(this.ownerAccount.accountId, {
            publicKey: this.ownerAccount.publicKey,
            contract: this.ownerAccount.contract
        });

        await masterAccountContract.init({ totalSupply: '10000' });
        const response = await masterAccountContract.balanceOf({ tokenOwner: this.ownerAccount.publicKey });
        console.log("balance:" + JSON.stringify(response));

        console.log("https://explorer.testnet.near.org/accounts/" + masterAccountName);

        console.log('Creating benchmark accounts')
        console.time('create accounts');
        const accountPrefix = `near-reddit-benchmark-${Date.now()}`;
        let contracts = [];
        for (let i = 0; i < NUM_ACCOUNTS - 1; i++) {
            const accountId = `${accountPrefix}-${i}`;
            let contract = await (async () => {
                const keyPair = KeyPair.fromRandom('ed25519');
                await keyStore.setKey(config.networkId, accountId, keyPair);
                await masterAccount.createAccount(accountId, keyPair.publicKey, parseNearAmount('0.1'));
                const account = await near.account(accountId);
                const contract = new Contract(account, contractName, contractConfig);

                this.accountsMap.set(accountId, {
                    publicKey: '1' + keyPair.publicKey.toString().substring(8),
                    contract: contract
                });

                return contract
            })();
            process.stdout.write('-');
        }
        console.timeEnd('create accounts');
        this.init = true;

        console.time('initial mint');
        for (const [accountId, account] of this.accountsMap.entries()) {
            try {
                await this.ownerAccount.contract.addModerator({ moderator: account.publicKey });
                await account.contract.mint({ tokens: '10000' });
            } catch (e) {
                console.error(e);
            }
        }
    }

    async runBenchmark() {
        if (!this.init) {
            console.log('Cannot run benchmark, first without createBenchmarkAccounts first');
            return;
        }

        if (this.running) {
            console.log('Benchmark already running, current progress: ' + this.progress);
            return;
        }

        this.running = true;
        this.tps = 0;
        this.progress = 0;
        this.gas = 0;

        let currentTxCount = 0;
        let startTime = Date.now();
        
        console.log('Start Benchmark');
        const all = [];
        let numFailed = 0;
        console.time('benchmark');
        for (const [accountId, account] of this.accountsMap.entries()) {
            all.push((async () => {
                for (let j = 0; j < TRANSACTIONS_PER_ACCOUNT; j++) {
                    const contract = account.contract;
                    try {
                        console.log('before');
                        await contract.transfer({to: this.ownerAccount.publicKey, tokens: '1'});
                        console.log('after');
                        currentTxCount++;
                        this.progress = currentTxCount / (NUM_ACCOUNTS * TRANSACTIONS_PER_ACCOUNT);
                        this.tps = currentTxCount / ((Date.now() - startTime) / 1000);
                    } catch (e) {
                        numFailed++;
                        process.stdout.write('E');
                        console.error(e);
                    }
                }
            })());
        }

        await Promise.all(all);
        console.timeEnd('benchmark');
        console.log('Number of failed transactions: ', numFailed);
        console.log('Benchmark ended');
        this.progress = 1;
        this.running = false;
    }

}

var args = process.argv.slice(2);

if (args[0] === 'test') {
    const test = async _ => {
        const benchmark = Benchmark.getInstance();
        await benchmark.createBenchmarkAccounts();
        await benchmark.runBenchmark().catch(console.error);

        console.log(await benchmark.retrieveGasPrice());

        /*setInterval(function () {
            console.log(`tps:${benchmark.getTps()} progress:${benchmark.getProgress()}`);
        }, 500);
        */
    }

    test();
}

module.exports = { Benchmark }

