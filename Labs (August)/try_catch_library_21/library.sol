// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// library <name> {}


library Explibrary {

    function exponential( uint256 a, uint256 b) public pure returns
        (uint256) {
        return a ** b ;
    }
}


contract SumContract{
    function sum( uint256 a, uint256 b) public pure returns (uint256) {
        return a + b ;
    }

}

contract LibraryClient {
    
    function GetExponential(uint256 firstVal, uint256 secondVal)
        public pure returns(uint256) {
        return Explibrary.exponential(firstVal, secondVal);
    }
    // just like we add a uint type to store a number so we need a variable to store contract value
    SumContract foo = new SumContract();

    function Sum(uint256 firstVal, uint256 secondVal) public view  
        returns(uint256) {
        return foo.sum(firstVal, secondVal);
    }

}

// task for library

library calculation{
    function sum(uint a , uint b )public pure returns (uint){
        return a+b;
    }

    function diff(int a , int b) public pure returns (int){
        return a-b;
    }

    function expo(uint a, uint b) public pure returns(uint){
        return a**b;
    }

}


contract implentions{

    function summation(uint firstVal, uint SecValue)public pure returns (uint){

        return calculation.sum(firstVal , SecValue);
    }

    function difference(int first , int sec)public pure  returns(int){
        return calculation.diff(first ,sec);
    }

    function exponential(uint a, uint b) public pure returns(uint){
        return calculation.expo(a,b);
    }
}


