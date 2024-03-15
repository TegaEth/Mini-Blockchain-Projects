// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage}  from "./simplestorage.sol";

contract CallSimple{
    // Create a public instance of the simple storage contract and make it an array
    //  It holds all the contracts to be created and can be accessed by the index of the contracts
    SimpleStorage[] public listofsimplestorage; 

    // This creates an instance of the simple storage contract and actually creates the contract with the new keyword
    // It adds the contract to the array by using the .push() function
    function create_simple_storage_contract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofsimplestorage.push(newSimpleStorageContract);
    }

    // To store a number in the created contract we have to find it via its index 
    // we create another instance of the contract and search for a contract via its index
    // then we just call the store function in the contract directly and pass our number
    function sfStore(uint256 newSimpleStorageIndex, uint256 SimpleStorageNumber) public {
        SimpleStorage mysimplestorage = listofsimplestorage[newSimpleStorageIndex];
        mysimplestorage.store(SimpleStorageNumber);
    }

    // This functions retrieves information from one of the created functions by fetching it via index
    // After its been fetched we just call the function directly  using the retrieve function it has 
    // Its important to add the return function since its what returns the value, lmao!
    function sfGet(uint256 newSimpleStorageIndex) public view returns(uint256){
        return listofsimplestorage[newSimpleStorageIndex].retrieve();
    }
}
