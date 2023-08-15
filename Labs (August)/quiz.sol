// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LoopsCount{
    function countnum(uint[] memory arr) public pure returns(uint)  {
        uint count = 0;
        for (uint i=0 ; i <arr.length;i++){
            if (arr[i] % 2 !=0){
                count++;
            }
        }
        return count;
    }
    uint[] public array= [1,2];
    function Merkle()public {
        // uint count = arr.length;
        // uint offset= 0;
        array.push(array[0]+array[1]);
    }
    function geet()public view returns (uint[] memory){
        return array;
    }

}

// structs can also be accessed from outside

enum cars{
    CAR,name,make
}
contract qiux22{
    struct CAR{
        string make;
        string cars;
        uint price;
    }
    CAR public car;
    // function initcar()public view  {
    //     CAR memory _car;
    //     _car.make = '2014';
    //     _car.price = 22;

    // }
}

contract quiex{
    function callda(uint[] calldata _x) public pure returns (uint[] calldata){
        return _x;
    }
}
contract EnSt{

enum RoomSize{
    small,medium,large
}
enum bed{
    x,xl,xxl
}
mapping (RoomSize =>bed)mapings;
// string roomcheck= mappings[Roomsize(2)];

struct Room{
    RoomSize rs;
    uint roomnum;
}
mapping (RoomSize =>Room)public  map;
function check()public {
// map[RoomSize.small]= Room(RoomSize.small,10);
}



}

contract MonthSeason{

    enum Month{
        jan,feb,mar,april,may,june,july,aug,sept,oct,nov,dec
    }
    enum Season{
        winter,spring,summer,autm
    }
    uint public j;
    mapping (Month => Season) map;

    function checking()public {
            for(uint k; k<4; k++){
               for(uint i ; i < 3; i++){
                    map[Month(j)]= Season(k);
                    j++;
               }
        }
    }

}