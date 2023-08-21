// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Base {
    uint public  data;
    
    constructor(uint _data) {
        data = _data; }
    
    function Print() public virtual returns (string memory) {
        return "Base Initialized";
    }
}

contract Derived is Base(3) {
     constructor() {}
 
    function getData() external view returns (uint) {
        uint result = data ** 2;
        return result; 
    }
 
    function Print() public virtual override returns (string memory) {
        return "Direct Initialization";
    }
}
contract Derived2 is Base {
    constructor(uint _temp) Base(_temp) {} // another way to initialize a constructor of the paret contract
    function getData() external view returns (uint) {
        uint result = data ** 4;
        return result;
    }
    
    function Print() public virtual override returns (string memory) {
        return "Indirect Initialization";
    }

}

contract Caller {
    Derived c = new Derived(); // created an instance of the derived contract
    // the instance works as a temporary variable that stores the value of the contract.

    function getResult() public returns(uint){
        c.Print();
        return c.getData();
    } 
}


