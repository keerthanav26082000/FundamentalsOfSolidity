/**
 *Submitted for verification at Etherscan.io on 2024-01-08
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ERC20Token {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => bool) rewards;
    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() {
        name = "SolidityToken";
        symbol = "SOL";
        decimals = 10;
        totalSupply = 100 * (10**uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
    }

    function _transfer(address _to, uint256 _value) internal returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

        function getReward(address _to) public {
        require(rewards[_to] == false, "You have already received the reward");
        rewards[_to] = true;
        _transfer(_to, 9);
    }

}