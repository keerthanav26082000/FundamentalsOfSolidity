// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;
// pragma solidity 0.8.0;
contract IntegerWrapAround {
    uint8 public balance;

    function decrease() public {
        balance--;
    }

    function increase() public {
        balance++;
    }
}