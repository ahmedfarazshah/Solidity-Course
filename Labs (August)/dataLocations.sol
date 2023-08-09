// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Storage {
   uint256 public value1;
   uint128 public value2;
   uint128 public value3;
   string public value4 = 'it should have a reference ';
        
//    function newValue() public pure{
    //   uint256 value5;
//    }
   function newValue() public view returns(uint256) {
        uint256 valueReturn = value1; //the value of value1 is not modified because the return value will be erased as it is assigned as memory automatically as it in the function
        //^  and when the function is executed the value of return value will be erased
        valueReturn = 10;
        return valueReturn;

    }

    function for_memory() public view returns(string memory) {
        string storage valueReturn = value4;
        // valueReturn = 'Hello World';
        return valueReturn;
    }

}