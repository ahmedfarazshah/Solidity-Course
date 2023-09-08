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

contract MyContract { // it will only deploy the contract from which the interface has got the values or functions and that contracts that are imported and or above the contract that will calculate other contracts value 
                        // this happens due to the compiler as it compiles from down to bottom
    function squareCounter(address _counter) external {
        ICounter(_counter).square(); // you cant directly call an contract's function so you use an interface that works like a common API.
    }
    function getCount(address _counter) external view returns (uint) {
         return ICounter(_counter).count(); 
    }
}

contract file{
    uint public numbers=3;
    function doubleup()external {
        numbers = numbers**2;
    }
}
