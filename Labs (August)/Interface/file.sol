// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface InterfaceExample{
    // Functions having only declaration not definition
    function getStr() external view returns(string memory);
    function setValue(uint _num1, uint _num2) external;
    function add() external view returns(uint); 
}


interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

}


// task 1

interface Calculator {
     function getResult() external view returns(uint);
}

contract Temp is Calculator {

    constructor() {}

    function getResult() external pure returns(uint result){
    uint a = 2;
    uint b = 5;
    result = b / a;
    }
}

///////////////////////////////////////
// task 2


























