// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// library <name> {}

contract kufe{

    event naming(string name);

    function what (string memory person)public  {
        emit naming(person);

    }   
}