//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;


    //inheritance 
    //first import...
    import "./SimpleStorage.sol";

    //inherit using the IS keyword
contract ExtraStorage is SimpleStorage{


//override....using two keywords,, virtual..override

    function storeFunction(uint256 _favoriteNumber) public override  {
        favortieNum = _favoriteNumber + 5;
    }
}