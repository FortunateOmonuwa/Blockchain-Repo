// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
//GET funds from users
//Withdraw funds
//Set a minimum funding value in USD

contract FundMe{

    uint256 public  minimumUsd = 50;
    function fund() public payable  {
        ///
        require(msg.value >= minimumUsd, "value sent less than required value"); //1 * 10**18 == 1000000000000000000

    }
    //function withdraw(){}
}