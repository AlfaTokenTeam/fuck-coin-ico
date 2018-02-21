pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FuckCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FuckCoin(address _owner)  UpgradeableToken(_owner) {
    name = "FuckCoin";
    symbol = "FCK";
    totalSupply = 10000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}