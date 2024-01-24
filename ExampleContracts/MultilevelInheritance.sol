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
contract Mammal is Animal {
    string public furColor;

    constructor(string memory _species, string memory _furColor) Animal(_species) {
        furColor = _furColor;
    }

    function giveBirth() public pure returns (string memory) {
        return "Live birth";
    }
}

// Further derived contract inheriting from Mammal
contract Dog is Mammal {
    string public breed;

    constructor(string memory _species, string memory _furColor, string memory _breed)
        Mammal(_species, _furColor)
    {
        breed = _breed;
    }
}
