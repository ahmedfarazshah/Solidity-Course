// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Counter {

    uint public count =2;
    function square() external {
        count = count ** 2; 
    }

}

interface ICounter {
 
    function count() external view returns (uint);
    function square() external;
//The increment() function in the interface has the same name, signature, and visibility as the increment() function in the contract.
//The increment() function in the interface is declared as external. This means that it can be called from other contracts.

}

contract MyContract {

    function squareCounter(address _counter) external {
        ICounter(_counter).square(); 
    }
    
    function getCount(address _counter) external view returns (uint) {
         return ICounter(_counter).count(); }

}
