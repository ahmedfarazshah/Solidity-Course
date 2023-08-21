// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Base {
    uint public x;

    function setX(uint _x) private  {
        x = _x; 
    }
}
contract Derived is Base {

    function getX() public view returns (uint) {
        return x;
    }

}


//          MultiLevel Inheritance

contract Parent {
    string public base = "Base Contract";

    function foo() public view virtual returns (string memory) {
        return base;
    }
}

contract Child is Parent {

    string public middle = "Middle Contract";

    function foo() public view virtual override returns (string memory) {
        return middle; 
    }

}
contract Grand is Child {
    string public derived = "Derived Contract";
    
    function foo() public view virtual override returns (string memory) {
        return derived; 
    }
}



contract baseUser{
    address public addr;
    function Print(address _addr) private {
        addr = _addr;
    }
}
contract Moderator is baseUser{
    string public name;
    function Print(address _addr, string memory _name) private  {
        addr= _addr;
        name= _name;
    }
}
contract Admin is Moderator{
        uint public pin;
        function Print(address _addr, string memory _name, uint _pin)public {
            addr= _addr;
            name= _name;
            pin = _pin;
        }
}

        //      hierarchical inheritance


contract Basex {
 
 uint public x;

 function setX(uint _x) public {
    x = _x; 
 } 

}


contract DerivedA is Basex {

 function getX() public view returns (uint) {
     return x; 
    } 

}


contract DerivedB is Basex {
 
    function getXTimesTwo() public view returns (uint) {
         return x * 2;
    } 

}


contract DerivedC is Basex {
    function cubeX() public view returns(uint) {
        return  x **3;
    }
}



// another task of hierarchical inheritance

contract Car {
    string public make;
}



















