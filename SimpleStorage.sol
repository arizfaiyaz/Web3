// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30; // define the solidity version
// ^ -> this is define the greater or the current version

/*
contract SimpleStorage {
    // Basic types: boolean(bool), uint, int, address, bytes
    
    bool hasFavNumber = true;
    uint256 favoriteNumber = 88;
    int favNumber = -88; // could be positive or negative
    string favoriteNumberInText= "Eightyeight";
    address favAdress = 0x0d77a142220F59B3dA280b59189904323a713C0a;
    bytes32 favBytes32 = "cat"; 
    */
    // bool is a variable that holds a value of the type boolean. A boolean can hold true or false. (bool)
    // uint256  is an unsigned integer with a size of 256 bits. It can be used to store larger amounts of data, such as Ether. (uint256)
    // int8 is a signed integer with a size of 8 bits. The range of values it can hold is -128 to +127. (int8)
    // int256 is an unsigned integer with a size of 256 bits. It can be used to store larger amounts of data, such as Ether. (int
        
// }

 contract SimpleStorage {
    uint256  myFavoriteNumber;

    // uint256[] listofFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    
    }

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    // view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }
    // dynamic array
    Person[] public listOfPeople;

    // static array
    // Person[3] punlic listOfPeople;

    // Person public pat =Person(7, "Ariz", true);
    // Person public cat = Person(9, "vidya", false);    
    // Person public mat = Person(15, "Ujjawal", false);    

    // better way to write this would be
    // Person public pat = Person(favoriteNumber:7, name: "ariz");
    mapping(string => uint256) public nameToFavoriteNumber;



    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
// Calldata, memoory, storage
// calldata, memory are temporary variables
// difference between calldata and memory is that memory can be modified but call data cannot be modified.
// e.g. memory _name + "cat" is valid but calldata + "cat" is not valid;
// storage-

// structs, mappings and arrays needs to be mentioned either memory or calldata
// no need for the storage


 }




