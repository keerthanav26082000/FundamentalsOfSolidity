// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FallbackDemo {
    string public calledFallbackFun;

    fallback() external payable {
        calledFallbackFun = "Fallback function is executed!";
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable {
        calledFallbackFun = "Receive function is executed!";
    }
}

// Creating the sender contract
contract Sender {
    event Log(bool success, bytes data);

    function transferEther(address _addr) public payable {
        // (bool sent, bytes memory data) = payable(_addr).call{value: msg.value}("");
        (bool sent, bytes memory data) = payable(_addr).call{value: msg.value}("Transaction Completed!");
        emit Log(sent, data);
        require(sent, "Transaction Failed!");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function callUnavailableFunction(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("foo()")
        );
        emit Log(success, data);
        require(success, "Transaction Failed!");
    }
}