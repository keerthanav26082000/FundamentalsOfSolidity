// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifiersExample {
    address public owner;
    uint256 public value;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _value) external onlyOwner {
        value = _value;
    }
}
