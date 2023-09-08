// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface IToken {
    function transferx(address to, uint256 amount) external;
}

contract TokenContract{
    function trasfer(address _to, uint256 _amount) external {
        // IToken(to, amount).transferx;
    }
    
}