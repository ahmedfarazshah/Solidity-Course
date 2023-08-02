// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop {
    
    function PrimeChecker(uint _num) public pure returns (bool is_prime ) {
          uint j =2;
        is_prime= true;
        if (_num == 0 || _num == 1) {
            is_prime = false;
        }
        while (j <= _num/2 ) { 
             if (_num % j == 0) {
             is_prime = false;
            break; }
            j++; 
        }
    }
}

// while loops first checks the condition and runs the code
// do while loops first runs the code and then checks the condition 
// for loops is used for known number of iterations
// syntax of for loop : 
/*
for (initialization; condition; iteration statement) {
 // Code to be executed
}
*/


contract forLoop{
    uint[] data;
    function loop() public returns (uint[] memory) {
        for (uint8 i = 1; i <= 20; i=i+2) {
        data.push(i);
        }
        return data;
    }
}