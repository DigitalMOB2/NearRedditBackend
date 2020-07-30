const { Contract, KeyPair, connect, utils } = require('near-api-js');
const { InMemoryKeyStore, MergeKeyStore, UnencryptedFileSystemKeyStore } = require('near-api-js').keyStores;
const { parseNearAmount } = require('near-api-js').utils.format;

const config = require('./config')(process.env.NODE_ENV || 'development');
const BN = require("bn.js");


const NUM_ACCOUNTS = 20;
const TRANSACTIONS_PER_ACCOUNT = 20;
const BATCH = 5;

class Benchmark {
    constructor() {
        this.ownerAccount = null;
        this.accountsMap = new Map();
        this.init = false;
        this.running = false;
        this.tps = 0;
        this.currentTxCount = 0;
        this.progress = 0;
        this.averageTxFee = '0';
        this.averageGasBurnt = '0';
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

    getCurrentTxCount() {
        return this.currentTxCount;
    }

    getContract() {
        return this.ownerAccount.accountId;
    }

    getTotalTx() {
        return NUM_ACCOUNTS * TRANSACTIONS_PER_ACCOUNT * BATCH;
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

    getAverageGasBurnt() {
        return this.averageGasBurnt;
    }

    getAverageTxFee() {
        return this.averageTxFee;
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

        let keyStore;

        //if (config.masterAccount) {
            keyStore = new MergeKeyStore([
                new InMemoryKeyStore(),
                new UnencryptedFileSystemKeyStore('./neardev')
            ]);
        /*} else {
            // ADD YOUR ACCOUNT HERE with a valid private key
            const account = {
                name: 'reddit.testnet',
                network: 'default',
                privateKey: "ed25519:4mc4ukS9iJv84n9gz5x2iJWqH1vw8tzY7e35HAUp6xThvXd3hgZ6e8ZmXgkciyVJ5GwNT6W3x8kinKM8Z8QmFrpt"
            };

            const keypair = utils.key_pair.KeyPair.fromString(account.privateKey);
            keyStore = new InMemoryKeyStore();

            await keyStore.setKey(config.networkId, account.name, keypair);
        }*/

        const near = await connect({ ...config, keyStore });

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

        await masterAccountContract.init({ totalSupply: '10000' });
        const response = await masterAccountContract.balanceOf({ tokenOwner: this.ownerAccount.publicKey });
        console.log("balance:" + JSON.stringify(response));

        console.log('Creating benchmark accounts')
        console.time('create accounts');
        const accountPrefix = `near-reddit-benchmark-${Date.now()}`;

        for (let i = 0; i < NUM_ACCOUNTS; i++) {
            try {
                const accountId = `${accountPrefix}-${i * 13}`;
                const keyPair = KeyPair.fromRandom('ed25519');
                await keyStore.setKey(config.networkId, accountId, keyPair);
                await masterAccount.createAccount(accountId, keyPair.publicKey, parseNearAmount('0.1'));
                const account = await near.account(accountId);
                const contract = new Contract(account, contractName, contractConfig);

                this.accountsMap.set(accountId, {
                    publicKey: '1' + keyPair.publicKey.toString().substring(8),
                    contract: contract
                });

                process.stdout.write('-');
            } catch (e) {
                console.error(e);
            }
        }
        console.timeEnd('create accounts');
        this.init = true;

        console.log('initial addModerators');
        for (const [accountId, account] of this.accountsMap.entries()) {
            try {
                await this.ownerAccount.contract.addModerator({ moderator: account.publicKey });
            } catch (e) {
                console.error(e);
            }
        }
    }

    async callContractMethod(contract, methodName, args) {
        const rawResult = await contract.account.functionCall(contract.contractId, methodName, args);
        return {tx: rawResult.transaction.hash, gas_burnt: rawResult.transaction_outcome.outcome.gas_burnt};
    }

    async runBenchmark(generateCSV = false) {
        if (!this.init) {
            console.log('Cannot run benchmark, first without createBenchmarkAccounts first');
            return;
        }

        if (this.running) {
            console.log('Benchmark already running, current progress: ' + this.progress);
            return;
        }

        const startGasPrice = await this.retrieveGasPrice();

        this.running = true;
        this.tps = 0;
        this.progress = 0;
        this.currentTxCount = 0;
        this.averageTxFee = '0';
        this.averageGasBurnt = '0';

        let currentTxCount = 0;
        let results = [];
        let startTime = Date.now();
        
        console.log('Start Benchmark');
        const all = [];
        let numFailed = 0;
        console.time('benchmark');

        for (const [accountId, account] of this.accountsMap.entries()) {
            all.push((async () => {
                const contract = account.contract;
                for (let j = 0; j < TRANSACTIONS_PER_ACCOUNT; j++) {
                    try {
                        //mint
                        let response = await this.callContractMethod(contract, 'mint', { tokens: '100' });
                        results.push({
                            tx: response.tx,
                            type: 'mint',
                            gas_burnt: response.gas_burnt
                        });

                        //burn
                        response = await this.callContractMethod(contract, 'burn', { tokens: '50' });
                        results.push({
                            tx: response.tx,
                            type: 'burn',
                            gas_burnt: response.gas_burnt
                        });

                        //transfer
                        response = await this.callContractMethod(contract, 'transfer', { to: this.ownerAccount.publicKey, tokens: '1' });
                        results.push({
                            tx: response.tx,
                            type: 'transfer',
                            gas_burnt: response.gas_burnt
                        });

                        //transfer
                        response = await this.callContractMethod(contract, 'transfer', { to: this.ownerAccount.publicKey, tokens: '1' });
                        results.push({
                            tx: response.tx,
                            type: 'transfer',
                            gas_burnt: response.gas_burnt
                        });

                        //transfer
                        response = await this.callContractMethod(contract, 'transfer', { to: this.ownerAccount.publicKey, tokens: '1' });
                        results.push({
                            tx: response.tx,
                            type: 'transfer',
                            gas_burnt: response.gas_burnt
                        });
                        currentTxCount += BATCH;

                        //this.progress = currentTxCount / (NUM_ACCOUNTS * TRANSACTIONS_PER_ACCOUNT * BATCH);
                        //this.tps = currentTxCount / ((Date.now() - startTime) / 1000);
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
        console.log('Number of transactions:', currentTxCount);
        console.log('Number of failed transactions: ', numFailed);
        console.log('Benchmark ended');

        const endGasPrice = await this.retrieveGasPrice();


        var averageGasPrice = (startGasPrice + endGasPrice) / 2;
        var averageGasBurnt = new BN(results[0].gas_burnt);

        results.forEach(t => {
            averageGasBurnt = averageGasBurnt.add(new BN(t.gas_burnt)).div(new BN(2));
        });

        var averageTxFee = averageGasBurnt.mul(new BN(averageGasPrice));

        if (generateCSV) {
            const createCsvWriter = require('csv-writer').createObjectCsvWriter;
            const csvWriter = createCsvWriter({
                path: 'benchmark.csv',
                append: true,
                header: [
                    { id: 'tx', title: 'Transaction' },
                    { id: 'type', title: 'Type' },
                    { id: 'gas_burnt', title: 'Gas Burnt' }
                ]
            });


            await csvWriter.writeRecords(results);
            //console.log(t.tx + ' ' + t.type + ' ' + t.gas_burnt);
        }

        
        this.progress = 1;
        this.currentTxCount = this.getTotalTx();
        this.averageTxFee = averageTxFee.toString(10);
        this.averageGasBurnt = averageGasBurnt.toString(10);

        console.log('averageTxFee: ' + this.averageTxFee);
        console.log('averageGasBurnt: ' + this.averageGasBurnt);
        console.log('averageGasPrice: ' + averageGasPrice.toString(10));

        this.running = false;
    }

}

var args = process.argv.slice(2);

if (args[0] === 'test') {
    const test = async _ => {
        const benchmark = Benchmark.getInstance();
        await benchmark.createBenchmarkAccounts();
        await benchmark.runBenchmark(true).catch(console.error);

        //console.log(await benchmark.retrieveGasPrice());

        /*setInterval(function () {
            console.log(`tps:${benchmark.getTps()} progress:${benchmark.getProgress()}`);
        }, 500);
        */
    }

    test();
}

module.exports = { Benchmark }

