// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract arrays {

uint[4] public arr1;

    function replace() public{
        delete arr1[0];
        delete arr1[3];
        arr1[0] = 2;
        arr1[3] = 10;

    }

    function get1() public view returns(uint[4] memory){
    return arr1;
    }

    /// dynamic array

}