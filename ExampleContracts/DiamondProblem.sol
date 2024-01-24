// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;

// Diamond Problem
// C3 Linearization : R->L

contract X {
    function foo() public virtual pure returns(string memory){
        return "Foo() from X";
    }
}
contract A is X {
        function foo() public virtual override pure returns(string memory){
            // return super.foo();
        return "Foo() from A";
    }
}
// This will not compile
contract C is X, A {
    function foo() public pure override(X, A) returns (string memory){
        // return super.foo();
        return "Foo() from C";
    }
}