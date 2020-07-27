const { Contract, KeyPair, connect } = require('near-api-js');
const { InMemoryKeyStore, MergeKeyStore, UnencryptedFileSystemKeyStore } = require('near-api-js').keyStores;
const { parseNearAmount } = require('near-api-js').utils.format;

class Near {

    constructor() {
        this.ownerAccount = null;
        this.accountsMap = new Map();
    }

    static getInstance() {
        if (!this.instance) {
            this.instance = new Near();
        }
        return this.instance;
    }

    async createAccounts(numAccounts) {
        const contractConfig = {
            viewMethods: ['totalSupply', 'balanceOf', 'allowance'],
            changeMethods: ['init', 'transfer', 'approve', 'transferFrom', 'addModerator', 'removeModerator', 'burn', 'mint', 'transferOwnership']
        }
    
        const config = require('./config')(process.env.NODE_ENV || 'ci');//'development');
        const keyStore = new MergeKeyStore([
            new InMemoryKeyStore(),
            new UnencryptedFileSystemKeyStore('./neardev')
        ]);
        const near = await connect({ ...config, keyStore });
    
        const sleep = (time) => new Promise((resolve) => setTimeout(resolve, time));
    
        console.log('Setting up and deploying contract');
        const masterAccountName = `nrb-master-${Date.now()}`;
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
    
        await masterAccountContract.init({ totalSupply: '20000' });
        const response = await masterAccountContract.balanceOf({ tokenOwner: this.ownerAccount.publicKey });
        console.log("balance:" + JSON.stringify(response));
    
        console.log("https://explorer.testnet.near.org/accounts/" + masterAccountName);
    
        console.log('Creating accounts')
        console.time('create accounts');
        const accountPrefix = `nrb-user-${Date.now()}`;
        let contracts = [];
        for (let i = 0; i < numAccounts; i++) {
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
            //contracts.push(contract);
            process.stdout.write('-');
        }
        console.timeEnd('create accounts');
    
        return this.accountsMap;
    }
    
    async getBalances() {
        console.log('get balances');
        for (const [accountId, account] of this.accountsMap.entries()) {
            try {
                const response = await account.contract.balanceOf({ tokenOwner: account.publicKey });
                console.log("balance:" + JSON.stringify(response));
            } catch (e) {
                console.error(e);
            }
        }
    }
    
    async balanceOf(accountId) {
        console.log('balance of');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.balanceOf({ tokenOwner: account.publicKey });
            console.log("balance:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async totalSupply() {
        console.log('totalSupply');
        try {
            const response = await this.ownerAccount.contract.totalSupply({ });
            console.log("totalSupply:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async mint(accountId, value) {
        console.log('mint');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.mint({ tokens: value });
            console.log("mint:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async burn(accountId, value) {
        console.log('burn');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await account.contract.burn({ tokens: value });
            console.log("burn:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async transfer(fromAccountId, toAccountId, value) {
        console.log('transfer');
        const fromAccount = this.accountsMap.get(fromAccountId);
        const toAccount = this.accountsMap.get(toAccountId);
        try {
            const response = await fromAccount.contract.transfer({to: toAccount.publicKey, tokens: value});
            console.log("transfer:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async addModerator(accountId) {
        console.log('addModerator');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await this.ownerAccount.contract.addModerator({ moderator: account.publicKey });
            console.log("addModerator:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
    
    async removeModerator(accountId) {
        console.log('removeModerator');
        const account = this.accountsMap.get(accountId);
        try {
            const response = await this.ownerAccount.contract.removeModerator({ moderator: account.publicKey });
            console.log("removeModerator:" + JSON.stringify(response));
        } catch (e) {
            console.error(e);
        }
    }
}

var args = process.argv.slice(2);
if (args[0] === 'test') {
    const test = async _ => {
        const near = Near.getInstance();

        let accountsMap = await near.createAccounts(4).catch(console.error);

        const accounts = Array.from(accountsMap);
        console.log(JSON.stringify(accounts[0][0]));

        //await getBalances();
        await near.balanceOf(accounts[2][0]);
        await near.totalSupply();
        await near.addModerator(accounts[2][0]);
        await near.mint(accounts[2][0], '1000');
        await near.balanceOf(accounts[2][0]);
        await near.balanceOf(accounts[0][0]);
        await near.totalSupply();
        await near.transfer(accounts[2][0], accounts[3][0], '100');
        await near.removeModerator(accounts[2][0]);
        await near.burn(accounts[3][0], '50');
        await near.getBalances();
    };

    test();
}

module.exports = {
    Near,
}
