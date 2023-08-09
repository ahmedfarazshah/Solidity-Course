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
    Status public s1= Status(1);

    struct Student{
        string name;
        uint age;
        uint registration_date;
        Department _department;
        Status _status;
        uint MarksObtained;
    } 
    mapping (uint => Student) public _student;

//task 5
    uint[] public indices;
    uint256 public studentslist;

    function register(
        string memory name,
        uint age,
        uint rollnumber,
        uint registration_date,
        Department _department,
        Status _status,
        uint MarksObtained
    ) public {
        _student[rollnumber] = Student(name,age,registration_date,_department,_status,MarksObtained);
        // _student[studentslist]= Student(name,age,registration_date,_department,_status,MarksObtained);
        _student[rollnumber] = _student[studentslist];
        studentslist++;        
    } 

// task 07

    // function reterive(_student[rollnumber])public view returns (string memory, uint, uint, Department, Status, uint){
    //     return _student[studentslist].rollnumber;
    // }





//task 06



    // function toupdate()




}