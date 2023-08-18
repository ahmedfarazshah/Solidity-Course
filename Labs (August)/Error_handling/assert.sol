// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Summation{

    function sum1(uint8 _num1, uint8 _num2) public pure returns(uint){
        uint sum;
        sum = _num1 + _num2;
        assert(sum < 256);
        return sum; 
    }

}

contract OwnerShipTransfer{
    mapping(uint256 => address) private owners;
    function transferOwner3(uint256 ID, address newOwner) public {
        assert(owners[ID] == msg.sender);
        owners[ID] = newOwner;
    }
}

contract Assert{
    
    
    function subtract(uint num1, uint num2) public pure returns(uint){
        uint sub;
        sub = num1 - num2;
        assert(num1-num2>=0);
        return sub;
    
    }
}

contract StopEP{                // cant be able to push in empty array

    int[] public array;

    function push(int value) public {
        array.push(value);
    }
    function pop() public {
        assert(array.length>0);
        array.pop();
    }
}


contract admissionPortal{

    enum Dep{
        Civil,Mechanic,Software,Electical
    }
    mapping (uint => bool) public admission_status;
    mapping  (uint => Dep) public _department;

    function set_status(uint studentid, bool query)public{
        admission_status[studentid]= query;
    }
    function chooseDep(uint studentId, Dep selectdep) public {
        assert(admission_status[studentId]==true);
        _department[studentId]= selectdep;
    }

}