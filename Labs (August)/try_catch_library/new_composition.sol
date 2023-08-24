// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Student {
    string private stdName;
 
    uint private stdRollNum;
    // uint public fine;
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
    students.push(newStudent); //this is just a instance
    }

    
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



    // we cant use function instead of the constructor because we want to add the value in the runtime
    // function newIn(string memory _name,uint _age, string memory _disease)public {
        



}




