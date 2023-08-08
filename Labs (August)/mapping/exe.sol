// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Vehicle {

    struct Car {
        string make;
        string model;
        uint year;
    }

    Car public car;

    function setValues () public returns (Car memory state, Car memory local){
        Car storage cars = car;
        cars.make = 'Toyota';
        cars.model = 'Corolla_Xli';
        cars.year = (2004);
        return (car, cars);
    }
    function setValues_mem () public view  returns (Car memory state, Car memory local){
        Car memory cars = car;
        cars.make = 'Toyota';
        cars.model = 'Corolla_Xli';
        cars.year = (2004);
        return (car, cars);
    }

  

}