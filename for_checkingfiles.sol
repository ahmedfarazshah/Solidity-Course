// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract checking{


function func5() public pure returns(int x, bool y, int){

        int z;

        x = 10;

        y = true;

        z = x;

        return (2, false, z);


    }

    bool[] public arr1;

    function push() public{

        arr1.push(true);

        arr1.push(false);

    }
    function length()public view returns(uint){
        return arr1.length;
    }


struct data{

        string name;

        uint age;

    }
// name of the constructor should be added if we use brackets to assign values 
    data public d = data("Ahmed", 23);
}
