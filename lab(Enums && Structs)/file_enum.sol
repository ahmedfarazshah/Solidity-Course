// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum{
        enum Exam{
            Checking,
            Pass,
            Fail,
            Scholarship
    }
    Exam public e1;
    function Pass() public{
        if(e1 == Exam.Checking){
            e1 = Exam.Pass;
         //e1 = Exam(2); can also be used
        }
    }
    function fail() public {
        if(e1 == Exam.Pass){
            e1 = Exam(2);
        }
    }
    function scholarship()public {
        if (e1 == Exam.Pass){ //== is used in if else statement as it is conditional operator
            e1 = Exam(3);
        }
    }
    // deleting values of the variable

    function del() public {
        delete e1;
    }

}
contract PizzaDeli{
    enum pizzaOrder{
        Pending,
        Preparing,
        Delivering,
        Received
    }
    // two ways to set a value to an enum
    pizzaOrder public e2;
    pizzaOrder public e3 = pizzaOrder.Preparing;
    pizzaOrder public e4 = pizzaOrder(3);

    // SETTING A VALUE TO THE ENUM
    pizzaOrder public e5; 
    function setting(pizzaOrder y)public {
        e5 = y;
    }
    function to_set(pizzaOrder _i) public {
        e2 = _i;
    }

    // getting the value of the setted variable
    function get() public view returns (pizzaOrder){
        return e5;
    }
    function get01()public view returns (pizzaOrder, pizzaOrder, pizzaOrder,pizzaOrder){
        return (e2,e3,e4,e5);
    }

    // deleting a enum variable and the value will be set to default

    function del()public {
        delete e5;
    }


}



