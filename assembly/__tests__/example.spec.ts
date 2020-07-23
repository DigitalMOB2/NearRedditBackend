import { init, balanceOf, totalSupply, transferFrom, addModerator, removeModerator } from "../main";
import { VM, u128 } from "near-sdk-as";

const alice: string = "alice";
const bob: string = "bob";

function logs(): string[] {
  return VM.outcome().logs;
}

describe("Token Contract should be", () => {
  it("created with full amount", () => {
    init(alice, u128.fromString('1000000'));
    expect(logs()).toContainEqual("initialOwner: " + alice);
    expect(balanceOf(alice)).toBe(u128.fromString(totalSupply()), "starting balance should be 1000000");
  });

  throws("A non existent account cannot transfer tokens", () => {
    transferFrom(bob, alice, u128.fromString('1'));
  });
});
