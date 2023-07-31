// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Working_day{

    enum day {
        Monday,
        Tuesday,
        Wednesday,
        Thursday
    }
    
    mapping(address => day) private person;

    function get(address addr) public view returns (day) {
        return person[addr];
    }

    // His role regarding address

    function set(day working_day,address _addr) public {
        person[_addr] = working_day;
    }

}