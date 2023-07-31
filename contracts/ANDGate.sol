// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ANDGate {
    bool public a = false && false;
    bool public b = false && true;
    bool public c = true && false;
    bool public d = true && true; 
}

contract minmax {
    uint public min = type(uint8).min;
    uint public max = type(uint8).max;
}

contract address_eth {
    address public myaddress = 0x2Dda2520f0fBa8e7cEc187B53DfAB6537c94159E;
    uint256 public balance = myaddress.balance;
}

// contract address_sapioa {
//     address public myaddress = 0x2Dda2520f0fBa8e7cEc187B53DfAB6537c94159E;
//     uint256 public balance = myaddress.balance;
// }

contract darray {
     uint256[] myarray;
    function addtoarray(uint256 number) public
    returns (uint256, uint256)
{
    myarray.push(number);
    return (number, myarray.length); }

    function getarrayvalue(uint256 index) public view returns (uint256) {
    return myarray[index]; }

    function popValue() public {
    myarray.pop(); }

    function deleteItem(uint256 index) public {
    delete myarray[index]; }
}

contract DefaultValues {
bool public defaultBoo; // false
uint public defaultUint; // 0
int public defaultInt; // 0
address public defaultAddr; //0x0000000000000000000000000000000000000
}

contract demo {
string public greet = "Hello Web 3.0"; }

contract gasconsumer {
    bytes32 public byte32 = 'hghgghgghgh';
    bytes1 public b1 = byte32[6];
}