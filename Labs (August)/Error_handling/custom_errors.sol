// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


// custom error are similar to events interms of the syntax 
// like they have a name and instead of emit 'revert' is called and the error name with 
//the parameter values

/*
        error "error name"(parameter list);
        to call it 
        revert "error name"(parameter values")
        
*/


contract CustomError{

    uint public balance = 1000;

    error Balance(uint balance, uint transferAmount);

    function transfer(uint amount) public returns(uint){
        if(amount > balance){
        revert Balance(balance, amount);
        }
        balance -= amount;
    return balance;
    
    }
}


contract OwnerShipTransfer{
    error Invalid();
    
    mapping(uint256 => address) private owners;
    
    
    function transferOwner4(uint256 ID, address newOwner) public {
        if(owners[ID] != msg.sender){
        revert Invalid();
        }
        owners[ID] = newOwner;
    }

}




contract Error_custom{

    uint[] public arr;
    error custom(string message, uint number);    


    function upush(uint num) public{
        if(IsPrime(num)){
        revert custom("the number is not a prime number", num);
        }
        arr.push(num);
    }

    function IsPrime(uint num) public pure returns(bool){
        if(num == 0 || num == 1){
            return false;
        }
        for(uint i = 2; i <= num/2; i++){
            if(num % i == 0){
            return true;
            }
        }
        return false;
    }
}

