// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StateVariable {
    uint public storedData; // State variable
    constructor() {
    storedData = 10; // Using State variable
    }
}
// A constructor initailize a value at the begining of a program or after a program is run.
// the start of a program is called as runtime.
