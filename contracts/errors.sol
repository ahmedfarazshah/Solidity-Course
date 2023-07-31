// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract errors{

    int public i;

    function set(int _i) public{
        i= _i;
    }


    function int_to_uint() public view returns(uint){
        if(i>=0){
        uint _u1= uint(i);
        return _u1;
        }
        else{
            revert("int is -tive, not possible to convert to uint");
        }
    
 /*require(num>=0), "int is -tive, not possible to carry the transaction"
if required was used instead of the revert
*/
    }

}
