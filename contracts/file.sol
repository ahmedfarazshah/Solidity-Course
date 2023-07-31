// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract name{

    string public var1 = 'zammer'; 
    string public var2 = 'muhummad raza';
    uint public age = 23;
    string public combine;
}
contract Counter {
    uint public count;

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }
        function inc() public {
        count += 1;
    }
}