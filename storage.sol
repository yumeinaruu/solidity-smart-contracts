// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Storage {
    uint256 myFavouriteNumber;

    //uint256[] listOfVavoriteNumbers;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // Person public myFriend = Person(7, "Alo");

    // dynamic array
    Person[] public listOfPeople;

    // static array
    //Person[3] public listOfPeopleStatic;

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _myFavouriteNumber) public {
        myFavouriteNumber = _myFavouriteNumber;
    }

    // pure canot read or change contract variables, only for local func vars
    // view can read contract variables but cannot change them
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    // calldata, memory, storage
    // memory - only exists for the duration of the function call. read and write
    // calldata - temporarily as memory but only read-only. takes less gas
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}