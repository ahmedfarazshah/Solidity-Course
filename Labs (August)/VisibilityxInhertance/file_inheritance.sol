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
    string public model;

    function vehicle(string memory _make, string memory _model) public {
        make= _make;
        model= _model;
    }
}

contract electricCar is Car{
    uint public batterycap;
    function vehicle(string memory _make, string memory _model, uint _batteryvol) public {
        make= _make;
        model= _model;
        batterycap = _batteryvol;
    }
}

contract hybridCar is Car{
    uint public gasTankCapacity;

    function vehicle(string memory _make, string memory _model, uint _gascap)public {
        make= _make;
        model= _model;
        gasTankCapacity = _gascap;
        
    }
}


// Multiple Inheritance

contract BaseAa {
    uint public x;

    function setX(uint _x) public {
    x = _x; }
}

contract BaseBb {

 string public name;

 function setName(string memory _name) public {
 name = _name; }

}

contract Derivedx is BaseAa, BaseBb {

 function getData() public view returns (uint, string memory) {
 return (x, name); }

}


// task 2


contract Worker{

    uint public cost;

    function submitwork( uint _cost)public {        
        cost = _cost;
    }
}


contract Client{
    string public projectType;

    function creatproject(string memory _nameProject) public {
        projectType = _nameProject;
    } 

}


contract Freelancer is Worker,Client{

    function seeAll() public view returns (string memory, uint){
        return (projectType, cost);
    }

}


    // Hybrid Inheritance
/*
    contract BaseA { … }
contract BaseB { … }
contract DerivedA is BaseA, BaseB { … }
contract DerivedB is BaseA, BaseB { … }
contract HybridDerived is DerivedA, DerivedB { … }
*/

contract Manufacturer{
    string public productName;
    function manufac(string memory _product)public {
        productName=_product;
    }
}

contract Supplier{
    //place order
    string public orderedProduct;
    function placed(string memory _product)public {
        orderedProduct = _product;
    }
}

contract Product is Manufacturer, Supplier{
    //trackproduct
    function seeAll()public view returns(string memory to_manufacture, string memory ordered){
        return  (productName, orderedProduct);
    }
}






