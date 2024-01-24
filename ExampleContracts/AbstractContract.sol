// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

abstract contract Vehicle {
    string name;
    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public view returns (string memory _name){
        _name = name;
    }
    function model() public virtual returns (string memory);
}

contract Car is Vehicle {
    function model() public override pure returns (string memory) { return "Maruthi"; }
}