// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract PC{ //personal contract

    struct Person {
        string name;
        uint age;
        address addr;
        string Marital_status;
    }

    Person public p1;

    event update(Person oldvalue, Person newvalue, uint timestamp, uint blocknumber);
    
    function setter(string memory _name,uint _age, address _addr, string memory _marital)public{
        Person memory oldvalue = p1;
        emit update(oldvalue, p1, block.timestamp, block.number);
    }

}