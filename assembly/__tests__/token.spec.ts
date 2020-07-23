import { Context, u128 } from "near-sdk-as";
import {
  init,
  totalSupply,
  balanceOf,
  transfer,
  approve,
  transferFrom,
  addModerator,
  removeModerator,
  burn,
  mint,
  transferOwnership
} from "../main";

let alice = 'alice';
let bob = 'bob.near';
let eve = 'eve.near';

describe('Token', function() {
  beforeAll(() => {
    
  });

  describe('with alice as initial owner', () => {
    beforeEach(() => {
      Context.setSigner_account_id(alice);
      init(alice, u128.fromString('1000000000'));
    });
    
    it("intially has " + totalSupply() + " tokens", () => {
      expect(balanceOf(alice).toString()).toBe('1000000000');
    });

    it('can transfer to other account', () => {
      const aliceStartBalance = balanceOf(alice);
      const bobStartBalance = balanceOf(bob);

      transfer(bob, u128.fromString('100'));

      const aliceEndBalance = balanceOf(alice);
      const bobEndBalance = balanceOf(bob);
      expect(aliceEndBalance).toBe(u128.sub(aliceStartBalance, u128.fromString('100')));
      expect(bobEndBalance).toBe(u128.add(bobStartBalance, u128.fromString('100')));
    });

    it('can transfer from approved account to another account', () => {
      transfer(bob, u128.fromString('100'));
      const aliceStartBalance = balanceOf(alice);
      const bobStartBalance = balanceOf(bob);
      const eveStartBalance = balanceOf(eve);

      approve(eve, u128.fromString('100'));

      const aliceMidBalance = balanceOf(alice);
      const bobMidBalance = balanceOf(bob);
      const eveMidBalance = balanceOf(eve);
      expect(aliceMidBalance).toBe(aliceStartBalance);
      expect(bobMidBalance).toBe(bobStartBalance);
      expect(eveMidBalance).toBe(eveStartBalance);

      // TODO: Use "eve" as sender
      transferFrom(alice, eve, u128.fromString('50'));

      const aliceEndBalance = balanceOf(alice);
      const bobEndBalance = balanceOf(bob);
      const eveEndBalance = balanceOf(eve);
      expect(aliceEndBalance).toBe(u128.sub(aliceStartBalance, u128.fromString('50')));
      expect(bobEndBalance).toBe(bobStartBalance);
      expect(eveEndBalance).toBe(u128.add(eveStartBalance, u128.fromString('50')));
    });

    it('alice can add bob as moderator', () => {
      addModerator(bob);
    });

    it('alice can remove bob as moderator', () => {
      removeModerator(bob);
    });

    it('alice can transfer ownership to bob', () => {
      transferOwnership(bob);
    });

    it('alice can mint 100 tokens', () => {
      const startTotalSupply = u128.fromString(totalSupply());

      mint(u128.fromString('100'));

      const endTotalSupply = u128.fromString(totalSupply());
      expect(endTotalSupply).toBe(u128.add(startTotalSupply, u128.fromString('100')));
    });

    it('bob can mint 100 tokens as moderator', () => {
      addModerator(bob);
      Context.setSigner_account_id(bob);

      const startTotalSupply = u128.fromString(totalSupply());

      mint(u128.fromString('100'));

      const endTotalSupply = u128.fromString(totalSupply());
      expect(endTotalSupply).toBe(u128.add(startTotalSupply, u128.fromString('100')));
    });

    it('alice can burn 100 tokens', () => {
      const startTotalSupply = u128.fromString(totalSupply());

      burn(u128.fromString('100'));

      const endTotalSupply = u128.fromString(totalSupply());
      expect(endTotalSupply).toBe(u128.sub(startTotalSupply, u128.fromString('100')));
    });

    it('eve can burn 100 tokens as normal user', () => {
      transfer(eve, u128.fromString('100'));
      const eveStartBalance = balanceOf(eve);

      Context.setSigner_account_id(eve);

      burn(u128.fromString('100'));

      const eveEndBalance = balanceOf(eve);
      expect(eveEndBalance).toBe(u128.sub(eveStartBalance, u128.fromString('100')));
    });

    throws("A non owner account cannot add moderators", () => {
      Context.setSigner_account_id(eve);
      addModerator(bob);
    });

    throws("A non owner account cannot remove moderators", () => {
      Context.setSigner_account_id(eve);
      removeModerator(bob);
    });

    throws("A non owner account cannot transfer ownership", () => {
      Context.setSigner_account_id(eve);
      transferOwnership(bob);
    });
  });
});
