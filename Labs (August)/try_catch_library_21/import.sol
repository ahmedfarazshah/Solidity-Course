// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;


import "./library.sol";

// for git hub files
// import "https://github.com/OpenZeppelin/openzeppelincontracts/blob/v2.5.0/contracts/math/SafeMath.sol";


// for NPM

// import "@openzeppelin/contracts/access/Ownable.sol";

// for specific symbols
// import { MySymbol1, MySymbol2 } from "./MyContract.sol";


//          Task

contract Callee {
 
 string public name = "I'm getting called";

}

// import "./Callee.sol";

contract Import {

    Callee public demo = new Callee();

    // Test Callee.sol by getting it's name.

    
    function getdemoName() public view returns (string memory) {
        return demo.name();
    }
    function call_lib(uint a , uint b)public pure returns (uint){
        return calculation.sum(a,b);
    }

}
