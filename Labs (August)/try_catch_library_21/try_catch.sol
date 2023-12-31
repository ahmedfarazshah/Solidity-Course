// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract PrimeChecker{
    
    constructor(uint a){
    require(a != 0, "Invalid Entry");
    assert(a != 1);
    }

    function isPrime(uint256 b) internal pure returns (bool) {
        if (b <= 1) {
        return false; 
        }
        if (b == 2) {
        return true; 
        }
        if (b % 2 == 0) {
        return false; 
        }
        for (uint256 i = 3; i * i <= b; i += 2) {
                    if (b % i == 0) {
            return false; 
            }
        }
        return true;
    }
    
    function onlyPrime(uint256 b) external pure returns (bool success) {
        // revert when a non-prime number is entered
        require(isPrime(b), "Ups! Reverting");
        success = true; 
    }
   
}




contract TryCatch {
    // success event
    event SuccessEvent();
    // failure event
    event CatchEvent(string message);
    event CatchByte(bytes data);
 
    PrimeChecker even;
 
    constructor() {
    even = new PrimeChecker(2);
    }
    
    function execute(uint amount) external returns (bool success) {
       try even.onlyPrime(amount) returns(bool _success){
            emit SuccessEvent();
            return _success;
        } catch Error(string memory reason){
            // if call fails
            emit CatchEvent(reason);
            }
    }
    
    function executeNew(uint a) external returns (bool success) {
        try new PrimeChecker(a) returns(PrimeChecker _even){
            // if call succeeds
            emit SuccessEvent();
            success = _even.onlyPrime(a);
        } catch Error(string memory reason) {
            emit CatchEvent(reason);
            
        } catch (bytes memory reason) {
            emit CatchByte(reason);
        }
    
    }
}

// Task

contract SDiv{

    function divide(uint a, uint b)external pure returns(uint){
        require(a>0 && a<=100 && b<a, "check the conditions and enter values");
        uint div;
        div= a/b;
        return div;
    }


}
contract Try{

    SDiv public div =new SDiv();
    // when new keyword is used you are pointing it to the desired contract.

    // constructor (){}
    event reg();
    event CatchByte(bytes data);
    event regnum(uint number);
    event failure(string reason);
    event log();

    function calldivide(uint a , uint b)external{
        try div.divide(a, b) returns(uint num){
            emit regnum(num);
        }catch Error(string memory message){
            emit failure(message);
        }catch (bytes memory reason) {
            emit CatchByte(reason);
        }
    }
}




