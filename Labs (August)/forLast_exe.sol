// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Factorial{

    function createFact(uint n) public pure returns(uint){
     uint factvalue;
        if(n == 0){
            factvalue = 1;
            return factvalue;
        }
    //******** Insert For Loop Here***********
        uint fac = 1;
        uint i;
        for (i= 1; i <=n; i++){
            fac = i*(fac);
        }        
        return fac;
    }
}

contract factorial{

    function fact(uint x) public pure returns(uint) {
    uint number;
    uint fac=1;
    uint i;
        number=x;
        for(i=1;i<=x;i++){
            fac= fac*(i);
        }
        return fac;
    }
}