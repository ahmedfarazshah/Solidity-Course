// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Student {

    struct student_details{
        string name;
        uint age;
    }

    enum day {
        Monday,
        Tuesday,
        Wednesday,
        Thursday
    }

    struct StudentStruct {
        string name;
        uint age;
    }

    // for the enum
    
    mapping(address => day) private person;
    mapping(address => StudentStruct) students;

    StudentStruct[] public ss;

        function get(address addr) public view returns (day) {
        return person[addr];
    }

    // His role regarding address

    function set(day working_day,address _addr) public {
        person[_addr] = working_day;
    }
// ending for the enum

    // for the structs
    
    function setName(string memory _name, address _addr) public {
        students[_addr].name = _name;
    }

    function setAge(uint age, address _addr) public {
        students[_addr].age = age;
    }

    // function willget_the_all (student_details, day, )



}