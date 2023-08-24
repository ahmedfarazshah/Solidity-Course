// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ForLoop{
    uint[] public numtable;
    function table(uint num) public{
        uint temp = num;
        for(uint i = 1; i <= 20;i++ ){
        numtable.push(num);
        num += temp;
        }
    }
    function get() public view returns(uint[] memory){
        return numtable;
    }

    function resetarr() public{
        delete numtable;
    }
}

contract ForLoop_part02{
    int[5] public arr = [-9, 8, 7, -2, 1];
    int[] public positarr;
    
    function positivepart() public{
        for(uint i = 0; i < arr.length; i++){
            if(arr[i] >= 0){
                positarr.push(arr[i]);
            }
        }
    }
    function getLength() public view returns (uint){
        return arr.length;
    }
    function getposit() public view returns(int[] memory){
         return positarr;
    }


    int[] public neggar;
    function extractNeg() public {
        for (uint i = 0; i < arr.length; i++){
            if(arr[i]<0){
                neggar.push(arr[i]);
            }
        }
    }
    function retarray() public view returns (int [] memory){
        return neggar;
    }

}

