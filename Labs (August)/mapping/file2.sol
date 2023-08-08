// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NameMap{

    mapping(uint => mapping(address => mapping(string=> string)))public UserMap;

    //set function
    function setMap(uint birthYear, address addr, string memory codename, string memory username) public {
        UserMap[birthYear][addr][codename] = username;
    }

    // getter function
    function get(uint birthYear, address addr, string memory codename) public view returns(string memory){
        return UserMap[birthYear][addr][codename];
    }

    function reset(uint birthYear, address addr, string memory codename) public {
        delete UserMap[birthYear][addr][codename];
    }
}


