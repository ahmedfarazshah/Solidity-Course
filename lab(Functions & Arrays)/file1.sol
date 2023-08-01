// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract john{
    function person(
    string memory name,
    string memory Gender,
    address add
) public pure returns (string memory _name, string memory _gender, address _add){
    _name = name;
    _gender = Gender;
    _add = add;
}
}