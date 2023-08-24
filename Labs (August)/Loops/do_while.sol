// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop{
    //The value of cond that you will input will decide 
    //the number of times the loop is run
    function iterate(uint cond) public pure returns(uint){
        uint i;
        uint iteration;
        do {
        iteration ++;
        i++;
        } while(i < cond);
        //If you input the value of 'cond' as 0, the condition will be false
        //on the first try, however you will notice that the loop still runs once
        return iteration;
    }
}

contract Looped{
    uint[] public arr;
    function ODDNum(uint max) public{
        uint i = 1;
        while(i <= max){
            if (i % 2 != 0){
                arr.push(i);
            }
            i++;
            }
        }
        function get() public view returns(uint[] memory){
        return arr;
    }
}

contract looped_doWhile{
        uint[] public array;
        function oddNums(uint number) public {
            uint i = 1 ;
            do{
               if (i%2 !=0)
               array.push(i);
               i++;
            }while (i <= number);
        }   
        function get()public view returns (uint[]memory){
            return array;
        }
}



