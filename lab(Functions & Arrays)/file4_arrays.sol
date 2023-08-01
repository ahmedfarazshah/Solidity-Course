// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DArray {
    uint[] public arr;
    function getlength() public view returns(uint){
        return arr.length;
}
}
contract DArray_ {
    int[] public arra;
    function upush(int _x) public{
        arra.push(_x);
    }
    function getlength() public view returns(uint){
        return arra.length;
}
}
contract pop {
    uint[] public arrays;
    function poping() public{
        arrays.pop();
    }
    function udelete(uint _index) public{
    delete arrays[_index];
    }

    // to delete an entire array
    function udelete1() public{
    delete arrays;
    }

// delete replaces the value
// returning an entire array
    uint[3] public arr1= [5, 6, 11];
    function get1() public view returns(uint[3] memory){
    return arr1;
    }
        
    uint[] public arr2;
    function get2() public view returns(uint[] memory){
    return arr2;
    }
}

contract return_giving {
    uint[3] public arr3 = [2, 6, 9];
    function getElement(uint x) public view returns(uint){
    return arr3[x];
    }
    
    
uint[5] public arr4;
    function give(uint _i, uint value) public{
    arr4[_i] = value;  
    }
}
