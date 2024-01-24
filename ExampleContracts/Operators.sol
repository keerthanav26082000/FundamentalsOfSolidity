// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorExample {
    // Arithmetic operators
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

    function modulus(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Cannot take modulus with zero");
        return a % b;
    }

    // Assignment operators
    function increment(uint256 a) public pure returns (uint256) {
        return a++;
    }

    function decrement(uint256 a) public pure returns (uint256) {
        return a--;
    }

    // Bitwise operators
    function bitwiseAnd(uint256 a, uint256 b) public pure returns (uint256) {
        return a & b;
    }

    function bitwiseOr(uint256 a, uint256 b) public pure returns (uint256) {
        return a | b;
    }

    function bitwiseXor(uint256 a, uint256 b) public pure returns (uint256) {
        return a ^ b;
    }

    // Boolean operators
    function logicalAnd(bool a, bool b) public pure returns (bool) {
        return a && b;
    }

    function logicalOr(bool a, bool b) public pure returns (bool) {
        return a || b;
    }

    function logicalNot(bool a) public pure returns (bool) {
        return !a;
    }

    // Conditional operator (ternary)
    function conditionalOperator(uint256 a, uint256 b, bool condition) public pure returns (uint256) {
        return condition ? a : b;
    }
}
