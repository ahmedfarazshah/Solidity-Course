// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ageVerifier {

function checkNumber(uint8 age) public pure returns (string memory){
   { return (age>= 18)? 'the person can vote':'the person cant vote';
}}
}


contract score {

    function demo (uint8 total) public pure returns (bool, string memory) {
        if(total >=80){
            return (true, "Achieved Gade : A");
        }
            else if (total >=60 && total <=79){
            return (true, "Achieved Gade : B");
        }
            else if (total >=41 && total <59){
            return (false,"Achieved Gade : C");
        }
            else{
            return (false,"Better Luck Next Time");
        }

    }
}

