// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Events{
    enum Quality{
        Good, Moderate, Bad
    }
    struct specs{
        string microprocessor;
        uint RAM;
    }
    
    //A single event can have multiple parameters
    
    event multi(string laptop, uint price);
    
    //You can also emit enums and structs as well
    //An event can have upto 3 indexed parameters

    event multiple(string laptop, uint indexed price, Quality indexed q,
    specs indexed s);
    //Naming the variable in an event is not necessary
    event mu(string, Quality);
    
    //You can also emit empty events
    event empty();
    function emits() public{
    emit multi("Hp", 150000);
    emit multiple("dell", 100000, Quality.Good, specs("intel", 128));
    emit mu("Lenovo", Quality.Moderate);
    emit empty();
    }
}


contract Eventss{

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    event _addresses(address previousaddr, address newaddr);
    
    function set_addr(address addr)public {
        address temp = owner;
        owner = addr;
        emit _addresses(temp, owner);
    }

}




contract PEve{

    struct personInfo{
        string name;
        string gender;
        uint age;
    }

    personInfo public p1;

    event Update(
        personInfo oldvalue,
        personInfo newvalue,
        uint blocknumber,
        uint timestamp
    );

    function setnewperson(string memory _name, string memory _gender, uint _age) public {
        personInfo memory temp = p1;
        p1= personInfo(_name,_gender,_age);
        emit Update(temp, p1, block.number, block.timestamp);
    }
}

contract zero{

    address public addr;
    event zeromessage(string _message);

    function insertaddr(address _addr)public {
        if(_addr == 0x0000000000000000000000000000000000000000){
            emit zeromessage("please provide a valid address");
        }else{
            addr = _addr;
        }
    }

}

contract eveToNum{

    function numgive(int number) public returns (int, string memory){
        int neg;
        int positiveEven;
        int positiveOdd;
    
        if(number <0){
            neg = number;
            emit localvar('negative local variable returned the value');
            return (neg, 'negative') ;

        }else if(number >=2 && number%2==0){
            positiveEven = number;
            emit localvar('positiveeven local variable returned value');
            return (positiveEven , 'postive even');
        }else{
            positiveOdd = number;
            emit localvar('Positveodd local variable returned value');
            return (positiveOdd, 'positive odd');
        }
    
    }

    event localvar(string message);



}


contract check{
    event Log(address indexed sender, string msg);
    event AnotherLog();
 
    function test() public {
        emit Log(msg.sender, "Hello Web3.0");
        emit Log(msg.sender, "It's all about Decentralization");
        emit AnotherLog();
    }
}