// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ageVerifier {

function checkNumber(uint256 age) public pure returns (string memory) {
    if (age>= 0) {
    return 'the person can vote'; // Execute this code if _number is 0
}  
    else {
    return 'person cannot vote'; // Execute this code if _number is not 0
    } 
}
}

contract numberCheck{

function checkNum(int8 number) public pure returns (string memory) {
    if (number >= 0) {
    return 'the number is a positive integer'; // Execute this code if _number is 0
}  
    else {
    return 'the number is a negative positive integer'; // Execute this code if _number is not 0
    } 
}
}