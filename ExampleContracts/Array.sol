//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;

contract Array {
    uint256[] numArray = [1, 2, 3, 4, 5];

    function arrayLength() public view returns (uint256) {
        return numArray.length;
    }

    function elementByIndex(uint256 i) public view returns (uint256) {
        return numArray[i];
    }

    function addValue(uint256 n) public {
        numArray.push(n);
    }

    function popValue() public {
        numArray.pop();
    }
}