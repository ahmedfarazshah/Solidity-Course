// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract file001{

    event Transfer(address indexed from,address indexed to, uint256 amount);

    mapping (address => uint256) public _balances;
    function _transfer(address from, address to, uint256 amount)external {
        
    _balances[from]= 100000;
    _balances[from] -= amount;
    _balances[to]+=amount;
    //emit it: basically we use emit to send or transfer any sort of data to another function or event or variable


    //note = arrays can't store addresses

    emit Transfer(from, to, amount);
    }
}


contract observe{

    event log(address indexed sender, string msg);
    event anotherlog();

    function test() public {
        emit log(msg.sender, "Hello Web3.0");
        emit log(msg.sender, "It's all about Decentralization");
        emit log(msg.sender, "It's all about Decentralization");
        emit log(msg.sender, "It's all about Decentralization");
        emit anotherlog();

    }


    event person(string name, address indexed sender, string department);

    function myself(string memory name,address sender, string memory department) external {
        emit person(name, sender, department);        
    }

// for auto generating the address of the person calling the function
    function autoaddr(string memory name, string memory department)external {
        emit person(name, msg.sender, department);
    }

}


