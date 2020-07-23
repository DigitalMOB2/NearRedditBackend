// @nearfile
import { context, storage, logging, PersistentMap, u128 } from "near-sdk-as";

// --- contract code goes below

const balances = new PersistentMap<string, u128>("b:");
const approves = new PersistentMap<string, u128>("a:");
const total_supply = new PersistentMap<string, u128>("c:");
const moderators = new PersistentMap<string, string>("m:");

export function init(totalSupply: u128): void {
  logging.log("initialOwner: " + context.senderPublicKey);
  assert(storage.get<string>("init") == null, "Already initialized token supply");
  //set total supply
  total_supply.set('totalSupply', totalSupply);
  balances.set(context.senderPublicKey, totalSupply);
  //set contract owner
  storage.set("owner", context.senderPublicKey);
  //set init to done
  storage.set("init", "done");
}

export function addModerator(moderator: string): boolean {
  assert(isOwner(context.senderPublicKey), "This account can not add moderators");
  moderators.set(moderator, moderator);
  return true;
}

export function removeModerator(moderator: string): boolean {
  assert(isOwner(context.senderPublicKey), "This account can not remove moderators");
  moderators.delete(moderator);
  return true;
}

export function totalSupply(): string {
  if (!total_supply.contains('totalSupply')) {
    return '0';
  }
  return total_supply.getSome('totalSupply').toString();
}

export function balanceOf(tokenOwner: string): u128 {
  logging.log("balanceOf: " + tokenOwner);
  if (!balances.contains(tokenOwner)) {
    return u128.Zero;
  }
  return balances.getSome(tokenOwner);
}

export function allowance(tokenOwner: string, spender: string): u128 {
  const key = tokenOwner + ":" + spender;
  if (!approves.contains(key)) {
    return u128.Zero;
  }
  return approves.getSome(key);
}

export function transfer(to: string, tokens: u128): boolean {
  logging.log("transfer from: " + context.senderPublicKey + " to: " + to + " tokens: " + tokens.toString());
  const fromAmount = getBalance(context.senderPublicKey);
  assert(fromAmount >= tokens, "not enough tokens on account");
  assert(getBalance(to) <= u128.add(getBalance(to), tokens),"overflow at the receiver side");
  balances.set(context.senderPublicKey, u128.sub(fromAmount , tokens));
  balances.set(to, u128.add(getBalance(to), tokens));
  return true;
}

export function approve(spender: string, tokens: u128): boolean {
  logging.log("approve: " + spender + " tokens: " + tokens.toString());
  approves.set(context.senderPublicKey + ":" + spender, tokens);
  return true;
}

export function transferFrom(from: string, to: string, tokens: u128): boolean {
  const fromAmount = getBalance(from);
  assert(fromAmount >= tokens, "not enough tokens on account");
  const approvedAmount = allowance(from, to);
  assert(tokens <= approvedAmount, "not enough tokens approved to transfer");
  assert(getBalance(to) <= u128.add(getBalance(to), tokens),"overflow at the receiver side");
  balances.set(from, u128.sub(fromAmount , tokens));
  balances.set(to, u128.add(getBalance(to), tokens));
  return true;
}

export function burn(tokens: u128): boolean {
  const balance = getBalance(context.senderPublicKey);
  logging.log("burn from balance: " + balance.toString() + " amount to burn: " + tokens.toString() + " from account: " + context.senderPublicKey);
  assert(balance >= tokens, "not enough tokens to burn");
  total_supply.set('totalSupply', u128.sub(u128.fromString(totalSupply()) , tokens));
  balances.set(context.senderPublicKey, u128.sub(balance , tokens));
  return true;
}

export function mint(tokens: u128): boolean {
  logging.log("from account: " + context.senderPublicKey);
  assert(isOwner(context.senderPublicKey) || isModerator(context.senderPublicKey), "This account can not mint tokens");
  logging.log("amount to mint: " + tokens.toString());
  total_supply.set('totalSupply', u128.add(u128.fromString(totalSupply()), tokens));
  balances.set(context.senderPublicKey, u128.add(getBalance(context.senderPublicKey), tokens));
  return true;
}

export function transferOwnership(newOwner: string): boolean {
  assert(isOwner(context.senderPublicKey), "This account can not call this method");
  storage.set("owner", newOwner);
  return true;
}

function getBalance(owner: string): u128 {
  return balances.contains(owner) ? balances.getSome(owner) : u128.Zero;
}

function isOwner(owner: string): boolean {
  return owner == storage.get<string>("owner");
}

function isModerator(moderator: string): boolean {
  return <boolean>moderators.contains(moderator);
}
