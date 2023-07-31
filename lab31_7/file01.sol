// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract personDetails{

function returnMany() public pure returns (string memory, string memory, address) {   
    return ('Ahmed', 'Male', 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
}

function named() public pure returns (string memory, string memory, address) {
return ('Jane', 'Female', 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 );
}


function assigned() public pure returns (string memory x, string memory b, address y) {
x = 'Ahmed';
b = 'Male';
y = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}



/*
function destructuringAssignments() public pure
returns (uint, bool, uint, uint, uint)
{
(uint i, bool b, uint j) = returnMany();
// Values can be left out.
(uint x, , uint y) = (4, 5, 6);
return (i, b, j, x, y);
}
*/





}
