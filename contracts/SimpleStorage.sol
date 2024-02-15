// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //First specify the version of solidity

//Steps to start..
//Add an 
//Specify the version of solidity...using pragma solidity
// Specify contract...This is a form of class in object oriented programming
//A contract is a form of class...
contract SimpleStorage{
//8bits = 1byte
    // boolean, uint, int, address, bytes || string
    // the null value of integers is 0..When it's initialized, it's initialized to 0
    bool hasFavoriteNumber = false;
    uint favNumber = 123;
    int hasFavoriteNum = 12 ;
    string testString = "Works fine";
    int256 intTest = -4;
    address myAddress = 0x70997678Dbd70Bd5a7EC9289c25F079d00117Cc4;  //It's an hexadecimal
    bytes32 check = "cat";//convert strings to byte..


    //Funtions

    //Access modifiers..
    //Public access Modifier means it accessable outside the contract... It's a getter function when used on a method
    //Private means only the contract
    //External means only contracts outside
    //Internal means only a contract and it's children
    //the default access modifier is internal


    uint256 favortieNum; //global scope or storage
    // People public  person = People({
    //     favortieNum: 27, name:"Fortunate"
    // });
    //Mapping Variable//Key and value ...a more effective data structure than arrays to get data
/*This is a Dictionary*/mapping (string => uint256) public  nameToFavNum; //input the key and get your value

    struct People{
        uint favortieNum;
        string name;
    }
    //type, modifier, and name for variables...for functions..type name modifier
    People[] public people; //Dynamic array because the size isn't given


//Data locations.... calldata,memory, storage... Calldata and memory mean the variable on exists temporarily...
//meaning only during the transaction of a particular function
//storage is one that exxists outside it's transaction.. global scope
//if you don't modify the parameter, you can leave it as calldata

function addPerson(string memory _name, uint _favoriteNum) public {
 people.push(People(_favoriteNum, _name)); 
 nameToFavNum[_name] =_favoriteNum;


 //People memory addNewPerson = People({favortieNum: _favoriteNum, name:_name});  //just like destructuring in javascript
 //people.push(addNewPerson);
}
    function storeFunction(uint256 _favoriteNumber) public virtual  {
        favortieNum = _favoriteNumber;
       
    } 
//int public checkSum ; // a variable is also  a form of view function when it has the public keyword

//View and pure functions only allow you to read from the chain...it doesn't cost gas
//However when a function that carries out a transaction or updates state calls a view function, thene you have to oay for the gas
    function retrieve() public  view  returns (uint256){
        return favortieNum;   
    }

   function returnPerson(uint256 _index) public  view returns (People memory){
    People memory peopleNew = people[_index];
    return peopleNew;

   }
}