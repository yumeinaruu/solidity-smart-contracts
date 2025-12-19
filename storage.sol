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
    Person[3] public listOfPeopleStatic;


    function store(uint256 _myFavouriteNumber) public {
        myFavouriteNumber = _myFavouriteNumber;
    }

    // pure, view
    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
    }
}