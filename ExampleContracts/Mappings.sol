//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    bytes1 a = 0x12;
    bytes2 b = 0x1234;

    function compare() public view returns (bool) {
        return b > a;
    }

    function bitOperations() public view returns (bytes2) {
        return a & b;
    }

    function leftShift() public view returns (bytes1) {
        return a << 1;
    }

    function returnAtIndex(uint _index) public view returns (bytes1) {
        return b[_index];
    }

    function returnLength() public view returns (uint) {
        return a.length;
    }
}