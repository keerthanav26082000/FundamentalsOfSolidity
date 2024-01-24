// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Events {
    event DepositNonIndexed(address _from, string _email, uint _value);
    event DepositIndexed(address indexed _from, string indexed _email, uint indexed _value);
    event Deposit(address _from, string indexed _email, uint _value);

    //    event DepositIndexed(address indexed _from, string indexed _email, uint indexed _value, string indexed _user);

    function deposit(string memory _email) public payable {
        emit DepositNonIndexed(msg.sender, _email, msg.value);
        emit DepositIndexed(msg.sender, _email, msg.value);
        emit Deposit(msg.sender, _email, msg.value);
    }
}