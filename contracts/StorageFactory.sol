
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;


//To interact with another contract in another file, just import the contract
import "./SimpleStorage.sol";

//import "./SimpleStorage.sol" as SimpleStorageContract;

contract StorageFactory{
    SimpleStorage[] public  simpleStorageArray;
    
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);    
    }

function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
   //To interact with another contract, you need two things
   //Address and 
   //ABI:Application Binary Interfact.. It tells the code exactly how it can interact with the contract 
    SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
    simpleStorage.storeFunction(_simpleStorageNumber);
}

function sfGet(uint256 _simpleStorageIndex) public  view  returns (uint256){
     SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
     return simpleStorage.retrieve();
}

function addPerson(uint256 _storageIndex, string memory _name, uint256 _favoriteNum) public {
    SimpleStorage simpleStorage = simpleStorageArray[_storageIndex];
    simpleStorage.addPerson( _name, _favoriteNum);

}



function returnPerson(uint256 _storageIndex) public  view returns (SimpleStorage.People memory){
 SimpleStorage simpleStorage = simpleStorageArray[_storageIndex];
 return simpleStorage.returnPerson(_storageIndex);
}



}