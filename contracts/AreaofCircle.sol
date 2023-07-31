// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
                            // Area of Circle

contract AreaofCircle {
    uint256 constant PI = 31415;
    function calculateArea(uint radius) public pure returns (uint){
        uint area= PI * radius *radius;
        area = area / 10000;
        return area;
    }

} 

contract Person{
    string firstName;
    string lastName ;


 function setFullName(string memory _firstName, string memory
_lastName) public{
    firstName= _firstName;
    lastName = _lastName;

}

function getFullName() public view returns (string memory){
return string(abi.encodePacked(firstName, " ", lastName));
}
}

