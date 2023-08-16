// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract PC{ //personal contract

    struct Person {
        string name;
        uint age;
        address addr;
        string Marital_status;
    }

    /// will show the old value untill the new value is assigned
    Person public p1;
    event update(Person oldvalue, Person newvalue, uint timestamp, uint blocknumber);
    
    function setter(string memory _name,uint _age, address _addr, string memory status)public{
        Person memory oldvalue = p1;
        p1= Person(_name,_age,_addr,status);
        //or you can also link as:
        // p1= Person({name:_name,age:_age,addr:_addr,Marital_status:status});
        emit update(oldvalue, p1, block.timestamp, block.number);
    }
}


contract zeroAddr{

    event xeroinput(string message);

    address public addr;
    // a declared state variable is always intilized in a function or in a constructor

    // addr = msg.sender;
    function inputaddr(address _addr)public {
        if(_addr == 0x0000000000000000000000000000000000000000){
            emit xeroinput("Zero address inputted on deployment");
        }
    }
// charaxter 4 bits
}


contract NoPrime {
    
    uint public nummain;

    event PrimeChecker(string, uint);

    function setter(uint _inputNum)public  {
        nummain = _inputNum;
    }

    function IsPrime(uint num) private pure returns(bool){
            if(num == 0 || num == 1){
                return false;
            }
            for(uint i = 2; i <= num/2; i++){
                if(num % i == 0){
                return false;
                }
            }
        return true;
    }

    function checker(uint _number)public {
        if(IsPrime(_number))
            emit  PrimeChecker("this is  a Prime number ", _number);
        else{
            emit PrimeChecker("this is not a Prime number", _number);
        }

    }











}