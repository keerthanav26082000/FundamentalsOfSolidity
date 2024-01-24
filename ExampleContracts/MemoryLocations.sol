// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryLocationExample {
    uint256 public dataStoredInStorage;
    
    function storeDataInStorage(uint256 _data) external {
        dataStoredInStorage = _data;
    }

    function readDataFromStorage() external view returns (uint256) {
        return dataStoredInStorage;
    }

    function modifyDataInMemory(uint256 _data) external pure returns (uint256) {
        // Variables in memory do not persist between function calls
        uint256 localVar = _data;
        localVar = localVar * 2;
        return localVar;
    }

    function readCalldata(uint256[] calldata dataArray) external pure returns (uint256) {
        // Calldata is read-only and used for function arguments
        // This function returns the sum of elements in calldata array
        uint256 sum = 0;
        for (uint256 i = 0; i < dataArray.length; i++) {
            sum += dataArray[i];
        }
        return sum;
    }
}
