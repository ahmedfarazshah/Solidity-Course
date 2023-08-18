// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OwnerShipTransfer{

    // a valid code to hide the address of owner so that hacker should not access it

    mapping(uint256 => address) public  owners;

    function transferOwner2(uint256 ID, address newOwner) public {
        if(owners[ID] != msg.sender){  //used to hide the owner address so that hacker should not access the the owner id
        revert("Transfer Not Owner"); }
        owners[ID] = newOwner;
    }
}


contract QouCal{

    int public calnum;

    function nums(int numerator, int denominator) public returns (int){
        if(denominator == 0){
            revert("the denominator is zero");
        }
        calnum = numerator/denominator;
        return calnum;

    }

}


contract VS{          //Voting System

    mapping (uint256 => bool) public votinglist;

    // constructor(){
    //     votinglist[0]= true;
    // }

    function vote(uint256 _candidateId) public {
        if(votinglist[_candidateId]== true && _candidateId >0){ 
            revert('the person already voted');
        }
        votinglist[_candidateId]= true;
    }

}