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

contract FibonacciSeries {
    function generateFibonacci(uint256 n) public pure returns (uint256[]
 memory) {
        uint256[] memory fibonacciSeries = new uint256[](n);// new will add elements to the array
        if (n >= 1) {
        fibonacciSeries[0] = 0; }
        if (n >= 2) {
        fibonacciSeries[1] = 1; }

        uint i = 2;
        while (i<n){
            fibonacciSeries[i] = fibonacciSeries [i-1] + fibonacciSeries[i-2];
            i++;
        }
        
        /********************** Change this Part Only ********************************
        1. Initialization: unit i = 2.
        2. Condition : i < n
        3. Formula: fibonacciSeries[i] = fibonacciSeries[i - 1] +
        fibonacciSeries[i - 2];
        4. Increment : i++
        ******************************************************************************
        */
        return fibonacciSeries; 
    }
}


contract NumberProcessor {
    function calculateSumAndAverage(uint256[5] memory numbers) public pure
        returns (uint256 sum, uint256 average) {
        uint256 totalSum = 0;
        uint256 i = 0;

        while(i < numbers.length) {
        totalSum += numbers[i];
        i++;
        }
        sum = totalSum;
        average = totalSum / numbers.length;
    }
}