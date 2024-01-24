// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinalToken {
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 public totalSupply;
    
    //A mapping that associates Ethereum addresses with their token balances.
    mapping(address => uint256) public balanceOf;
    //A mapping that associates Ethereum addresses with their token balances.
    mapping(address => mapping(address => uint256)) public allowance;
    //events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor() {
        name = "SolidityToken";
        symbol = "SOL";
        decimals = 10;
        totalSupply = 100 * (10**(decimals));
        balanceOf[msg.sender] = totalSupply;
    }

    //function to create tokens
    function mint(uint _noOfTokens) external{
        totalSupply += _noOfTokens;
    }

    // Function to get the total supply of tokens
    function totalSupplyTokens() external view returns(uint256){
        return totalSupply;
    }

    // Function to transfer tokens
    function transfer(address to, uint256 value) external returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    // Function to approve a spender to spend tokens on behalf of the owner
    function approve(address spender, uint256 value) external returns (bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    // Function to transfer tokens from one address to another on behalf of the owner
    function transferFrom(address from, address to, uint256 value) external returns (bool) {
        require(balanceOf[from] >= value, "Insufficient balance");
        require(allowance[msg.sender][from] >= value, "Not enough allowance");
        balanceOf[from] -= value;
        balanceOf[to] += value;
        allowance[msg.sender][from] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    // Function to get the allowance granted by the owner to a spender
    function getAllowance(address owner, address spender) external view returns (uint256) {
        return allowance[owner][spender];
    }
}


//ERC-20 stands for Ethereum Request for Comment 20, and it is a widely adopted standard 
//interface for fungible tokens on the Ethereum blockchain.