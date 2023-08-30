// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//abi.encode

contract zcheck{
    function encode(address _address, uint data) public pure returns (bytes memory) {
        return (abi.encode(_address, data));
    }
}

// the abi encode function fills each parameter with 32 bytes and splice(join) them together
// it serialize(uses bytes format to store data structures) and deserilizes


// concatinate : puting things together in a series or connecting them

// encode packed

// concatiates and pack multiple values in single byte array
// creates byte array

//omits/remove alot of 0 filled in and used to save space
// it is used when you are not concerned with the data you just compute hash of the data
// useful when you are not concerned with contracts

// it is used to pad(make the data inbetween 0 zeros so that the data will not get lost) the data so it won't be lost
contract encodepacked{

    function encodePacked(address _address, uint data) public pure returns(bytes memory result) {
        result = abi.encodePacked(_address, data);
    }
}


// abi encode with selector

// it basically compute hash with the function selector and is used with concerned with contract 
// function selector is of 4 bytes
// uses function selector and input parameters

contract encode_selector{
    
    function encodeWithSelector(address _address, uint data) public pure returns(bytes memory result) {
        
        result = abi.encodeWithSelector(bytes4(keccak256("encodeWithSelector(address, uint )")),_address, data);
    
    }
}

// abi encode with signature
// compute the hash of signature of a function 
// signature of a function: function name and input parameters
// similar to encode with selector but don't use 4 bytes of the selector
// probablistic number :"encodeWithSelector(address, uint)" it is the data with the signed data
contract encodeWith_signature{

    function encodeWithSignature(address _address, uint data) public pure returns(bytes memory result) {
    
        result = abi.encodeWithSignature(("encodeWithSelector(address, uint)"),_address, data);
    
    }



}


// task 

contract AEencoding{

    struct Laptop{
        string make;
        uint yearmodel;
        uint generation;

    }

    function lap(string memory _make, uint _year, uint gen)public pure  returns (bytes memory concatinate){
        Laptop memory newlap;
        newlap= Laptop(_make,_year , gen);
        return abi.encode(newlap);

    }

        function Packed(string memory _make, uint _year, uint gen)public pure  returns (bytes memory concatinate){
        Laptop memory newlaps;
        newlaps= Laptop(_make,_year , gen);
        return abi.encodePacked(_make,_year, gen);

    }




}

// Decoding

// returns / var = abi.decode(binary data,(data type1, data type2));

// task

contract decode {

    function encode(string memory name, uint age, string memory gender)public pure returns (bytes memory data){
        data = abi.encode(name,age,gender);
    }

    function decodex(bytes memory _data)public pure returns(string memory a, uint b, string memory c){
        (a,b,c)= abi.decode(_data,(string , uint, string));
        // return abi.decode(_data,(string , uint, string));
    
    }

}



//                   task final


contract Serilize_Voting{

    function voteEncoder(address addr, uint id, string memory name, uint[3] memory DOB)public pure returns(bytes memory file){
        file = abi.encode(addr,id,name,DOB);

    }

    function voterID(bytes memory data)public pure returns (address,uint,string memory,uint[] memory){
        
        return abi.decode(data,(address,uint,string,uint[]));

        // use destruct : , (empty values with in commas)
    }
}



