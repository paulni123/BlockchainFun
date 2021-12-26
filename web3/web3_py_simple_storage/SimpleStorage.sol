// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    // bool favoriteBool = false;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0x34B5cDBA3F86A97cC5e331F317FbD59125CFf170;
    // bytes32 favoriteBytes = "cat";

    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    // People public person = People({favoriteNumber: 2, name: "Patrick"});

    function store(uint256 _favoriteNumber) public returns (uint256) {
        favoriteNumber = _favoriteNumber;
        return favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
