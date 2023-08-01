// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// 01
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
//02
}
contract dynamic{
    /// dynamic array
    string[] public arr2;
    function spush(string memory firstName, string memory lastName, string memory surname) public {
        arr2.push(firstName);
        arr2.push(lastName);
        arr2.push(surname);
    }
    function get2()public view returns (string[] memory){
        return arr2;
    }
    function pop()public{
        arr2.pop();
    }
    function getName()public view returns (string memory){
        return arr2[0];
    }

}
//03
contract Arrayed{
    int[4] public arr3;
    function del_declare() public{
        delete arr3;
        arr3[0]= -5;
        arr3[1] = 0;
        arr3[2] = 5;
        arr3[3] = 10;
    }
    function get() public view returns(int[4] memory){
         return arr3;
    }
    function getlength() public view returns(uint){
        return arr3.length;
    }
}
//04

contract integers{

    int[] public int_array;
    function to_add(int number) public{
        int_array.push(number);
    } 
    function retrive(uint index) public view returns (int){
          return int_array[index];
    }
    function del(uint _i) public {
        delete int_array[_i];
    }
    function poping()public {
        int_array.pop();
    }   
}

