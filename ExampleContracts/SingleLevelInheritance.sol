// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract
contract Animal {
    string public species;

    constructor(string memory _species) {
        species = _species;
    }

    function makeSound() public pure returns (string memory) {
        return "Some generic animal sound";
    }
}

// Derived contract inheriting from Animal
contract Dog is Animal {
    string public breed;

    constructor(string memory _species, string memory _breed) Animal(_species) {
        breed = _breed;
    }
}
