// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OwnerShipTransfer{
    mapping(uint256 => address) public owners;

    function transferOwner1(uint256 ID, address newOwner) public {
        require(owners[ID] == msg.sender, "Transfer Not Owner");
        owners[ID] = newOwner;
     }
}


contract InputValidator{

    mapping (address => uint)public balances;
    
    function givebtc()public {
        balances[msg.sender]= 1000;
    }

    function Transfer(uint216 amount, address recipient)public {
        balances[msg.sender] -= amount;
        balances[recipient];
        balances[recipient] += amount;
        require(amount>0 && amount<100, 'amount should be less than 100 and greater than 0');

    }
}


contract qoutient_calc{

    
    int public calnum;
    
    function calcQoutient(int numerator , int denominator)public returns(int){
        require(denominator !=0 ,"denominator should not be zero");
        calnum = numerator/denominator;
        return calnum;

    }

}