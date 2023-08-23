// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Student {
    string private stdName;
 
    uint private stdRollNum;
 
    // setting values of state variables
 
    constructor (string memory name,uint rollNum) {
    stdName = name;
    stdRollNum = rollNum; }

}
contract StudentsList {

    // array to store students ( composition )
    Student[] public students;

    constructor () {
    Student newStudent = new Student("Burak", 20);
    students.push(newStudent); }

}

// task

contract HMS{       //Hospital Management System
    string public name; 
    uint public age;
    string public disease;

    constructor(string memory _name,uint _age, string memory _disease){
        name= _name;
        age = _age;
        disease= _disease;
    }

}

contract patientlist{
    
    HMS[] public list; 
    
    constructor (){
    HMS newpatient = new HMS('John',33,'headache');
    list.push(newpatient);
    }

    HMS newpatients = new HMS('John',33,'headache');

    function newIn(string memory _name,uint _age, string memory _disease)public {
        // newpatients(_name,_age,_disease);



    }

}