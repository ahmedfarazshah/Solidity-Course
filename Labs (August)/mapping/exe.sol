// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Vehicle {

    struct Car {
        string make;
        string model;
        uint year;
    }

    Car public car;
// this will make a make the both variables same means the reference
    function setValues () public returns (Car memory state, Car memory local){
        Car storage cars = car;
        cars.make = 'Toyota';
        cars.model = 'Corolla_Xli';
        cars.year = (2004);
        return (car, cars);
    }

    // using memory for the variable in the local will make a copy of state variable
    function setValues_mem () public view  returns (Car memory state, Car memory local){
        Car memory cars = car;
        cars.make = 'Toyota';
        cars.model = 'Corolla_Xli';
        cars.year = (2004);
        return (car, cars);
    }

  

}