// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract mapchecking{
    mapping (string => mapping(address=> uint)) mas;

    function set(uint[] memory _x) public pure returns (uint[] memory){
        _x[0]=0;
        return (_x);
    }
    uint [] arr;
    function r(uint[] calldata _arr) public {
        // _arr[0]=1;
    }


}



contract checking{
function push(bool A)public pure returns (bool){
    A!= false;
    return A;
}
// function updateValue(uint newValue) public view returns (bool success);
// will add a dynamic array in the output
function arrayOutput(uint[] memory _arr) public {}
function get()public returns (uint){
    
}

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
    data[] public datas;
    // function create()
// name of the constructor should be added if we use brackets to assign values 
    data public d = data("Ahmed", 23);




}


contract new_check{
enum ShirtSize{
       Small, Medium, Large, ExtraLarge
   }
   ShirtSize public s1 = ShirtSize.Large;

enum WorkingDays{
       Monday, Tuesday, Wednesday, Thursday, Friday
   }
   WorkingDays public w1;
   WorkingDays public w3;

   function set(WorkingDays _w) public{
       w1 = _w;
   }

enum WorkingDayss{
       Monday, Tuesday, Wednesday, Thursday, Friday
   }
   WorkingDayss public w5;

   function idelete() public{
       delete w5;
   }

string[] public people;

function check() public view returns (uint){

    // return people[0].
}





}

