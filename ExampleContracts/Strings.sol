//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Strings {
    string message;

    function setMessage(string calldata _message) public {
        message = _message;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function getLength() public view returns (uint) {
        bytes memory b = bytes(message);
        return b.length;
    }
}