// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SRS{ //student registration system

    enum Department{
        Artificial_Intelligence,
        Blockchain,
        E_Commerce,
        Arts
    }

    enum Status{
        Enrolled,
        NotEnrolled,
        Graduated,
        Expelled
    }

    struct Student{
        string name;
        uint age;
        uint registration_date;
        Department _department;
        Status _status;
        uint MarksObtained;
    } 
    mapping (uint => Student) public stuRoll;
    mapping (Department => uint) public counts;


//task 5
    // uint[] public indices;
    // uint256 public studentslist;

    function register(
        string memory name,
        uint age,
        uint rollnumber,
        uint registration_date,
        Department _department,
        Status _status,
        uint MarksObtained
    ) public {
        stuRoll[rollnumber] = Student(name,age,registration_date,_department,_status,MarksObtained);

        if(_department ==Department(0) ){
            counts[_department]++;
        }else if(_department ==Department(1)){
            counts[_department]++;
        }else if(_department ==Department(2)){
            counts[_department]++; 
        }else if(_department == Department(3)){
            counts[_department]++;
        } 
    }

    function update(
        string memory name,
        uint age,
        uint rollnumber,
        uint registration_date,
        Department _department,
        Status _status,
        uint MarksObtained)public {
        stuRoll[rollnumber] = Student(name,age,registration_date,_department,_status,MarksObtained);
        }

    function get(uint i) public view returns (Student memory){
        return stuRoll[i];
    }

    //to get only one data of student
    function getName(uint i) public view returns (string memory){
        return stuRoll[i].name;
    }

    function DepartmentAI()public view returns (uint,uint,uint,uint){
        return (counts[Department(0)],
                counts[Department(1)],
                counts[Department(2)],
                counts[Department(3)] );
    }
 
    // make a array that should arrange itself according to the marks obtained in the highest order 

    function topinBlock() public view returns (Student memory,Student memory, Student memory){
        // return count[depar]
    }



}