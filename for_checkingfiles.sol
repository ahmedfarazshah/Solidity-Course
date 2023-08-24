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


            // Loops of the quiz are defined below



contract summers2{
    enum Month{
        Jan,Feb,Mar,April,May,June,July, Aug,Sep,Oct,Nov,Dec
    }

    Month[] public summer;
    Month i;

    function set()public {
        for(uint j= 1;i<= Month.July; j++){
            if((i == Month(5))|| (i == Month(6))  || (i == Month(7))){
                summer.push(Month(i));
            }
        i =Month(j);
        }
    }
}

// loop will run untill the 5 index numbers but will store negative numbers

contract compilation{

    int[5] public arr = [-4,4,6,-3,4];
    int[] public positarr;

    function set() public {

        for (uint i = 0 ; i <arr.length; i++){
            if(arr[i] <0){
                positarr.push(arr[i]);
            }
        }
    }

    // for a empty array

    uint[] public arrays;
    function pushing()public {
        for(uint i=0; i<5; i++){
                arrays.push(i);
        }
    }

    int public x;
    function using_not()public {
            for (uint i =2 ; i!= 0 ; i--){
                for (uint y =2 ; y!= 0 ; y--){
                    x--;
                }
            }
    }
}

contract Total{

    uint public total = 0;
    function rep()public {
        for(uint i=1;i<=3;i++){
            for(uint y=1; y<=1;y++){
                total +=y;
            }
        }
    }

}

contract LoopeventCount{

    function oddnum(uint[] memory array) public pure returns(uint){
        uint count= 0;
        for(uint i =0 ; i<=array.length; i++){
            if(array[i] %2 != 0){
                count++;
            }
        } 
        return count;
    }

}




    
    /*
    Initial value of x is not provided in the code snippet, so let's assume x starts with the value 0.
Outer loop: i starts at 2, and the loop iterates.

Inner loop: y starts at 2, and the loop iterates.
x becomes -1 (0 - 1).
Inner loop: y decrements to 1, and the loop iterates.
x becomes -2 (-1 - 1).
Inner loop: y decrements to 0, the loop stops.
Outer loop: i decrements to 1, and the loop iterates.

Inner loop: y starts at 2, and the loop iterates.
x becomes -3 (-2 - 1).
Inner loop: y decrements to 1, and the loop iterates.
x becomes -4 (-3 - 1).
Inner loop: y decrements to 0, the loop stops.
Outer loop: i decrements to 0, the loop stops.

After both loops have executed, the value of x has become -4 due to the repeated decrements within the nested loops.

In summary, the code utilizes nested loops to repeatedly decrement the value of the x variable. Since the loops are executed multiple times and each iteration decreases x, the final value of x becomes -4.
*/



//while loops 

contract mixer{

    uint public sum;
    uint public k;

    function valueK()public {
        while(sum <= 15){
            sum += k;
            k++;
        }

    }

}
// do while 

contract doIt{

    uint public sum= 1;
    uint public k= 1;

    function dowhile() public {
        do{
            sum+=k;
            k++;
        }while (sum<=10);
    }

}
contract Doit2{

    uint public i= 1;
    uint iteration;
    uint cond=0;

    function valueI()public {
        do{
            i++;
            iteration++;
        }while (i<cond);

    }


    uint public life;
    function span()public {
        for(uint y=0; y<1;y++){
            life += y;
        }
    }
}


contract AAA{
    function multiply(uint a, uint b)public  pure  returns (uint){
        uint c = a*b;
        assert(c/a==b);
        return c;
    }

    uint public bal= 10000;
    uint private sum= 223;

    function withdraw(uint value)public view {

        require(value <= bal,'not enough balance');
        revert('not allowed');
        // bal -=value;
    }

    event file(uint newclient);
    event exile();

    // emit Event.exile(345);
    function insert_name() public {
        emit  exile();
    }
    function exe()internal view  returns(uint){
        return sum;

    }
}

contract z is AAA{

    function gety() public view returns (uint){
        return exe();
    }

}

contract AB{
    event file(string message);

    constructor(){
        emit file("to check the execution");
    }
}


contract xyz{

    uint internal numplate=789;
    function foo()public view returns(uint){
        return numplate;
    }

}
contract xy is xyz{

    uint private car;
    function foox() public view returns (uint){
        return (numplate);
    }

}

contract xd is xyz,xy{
    uint public  temp;

    uint private  car;
    constructor(){
        temp= xy.foox();
    }
}