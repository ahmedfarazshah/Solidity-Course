// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract circle{

    uint pi = 31415;
function circumference_circle(uint r)public view returns (uint circum){
    circum = 2 * pi * r;
    circum = circum/10000;

}
    
}