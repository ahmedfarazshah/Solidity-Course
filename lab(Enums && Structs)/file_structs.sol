// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
 struct Voter {
    string Name;
    address addr;
    bool hasVoted;
 }
contract VotingSystem {
    // An array of 'Voter' structs
    // for dynamic array
    Voter[] public voters;
    function create1(string memory _Name, address _addr)
        public {
        voters.push(Voter(_Name, _addr, false));
    }

    function create2(string memory _Name, address _addr) public {
        voters.push(Voter({Name: _Name, addr:_addr, hasVoted:
        false}));
    }
    function create3(string memory _Name, address _addr)
     public {
        Voter memory voter;
        voter.Name = _Name;
        voter.addr = _addr;
    // Voter.hasVoted initialized to false
        voters.push(voter);
    }
    function get(uint _index) public view returns (string
        memory Name, address addr, bool hasVoted) {
        Voter storage voter = voters[_index];
        return (voter.Name, voter.addr,voter.hasVoted);
    }
    // update hasVoted
    function togglehasVoted(uint _index) public {
        Voter storage voter = voters[_index];
        voter.hasVoted = !voter.hasVoted;
    }
}

contract BankAccount{

    struct Account{
        uint256 accountid;
        uint256 balance;
        address owner;
    }
Account public accounts;

    function create1() public {
        Account storage _accounts = accounts;
        _accounts.accountid = 10;
        _accounts.balance = 100 ;
        _accounts.owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

    function create2() public {
        accounts.accountid = 33;
        accounts.balance = 444;
        accounts.owner = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    }

    function create3() public {
        accounts = Account(33 ,555 , 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C);
    }

    function create4() public {
        accounts = Account({accountid:88,balance: 9898,owner: 0xdD870fA1b7C4700F2BD7f44238821C26f7392148});
    }
    function getter() public view returns (Account memory){
        return accounts;
    }

}
//  if we declare it as an fixed array
/*
Account[4] public accounts;

    function create1() public {
        Account storage _accounts = accounts[0];
        _accounts.accountid = 10;
        _accounts.balance = 100 ;
        _accounts.owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

    function create2() public {
        accounts[1].accountid = 33;
        accounts[1].balance = 444;
        accounts[1].owner = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    }

    function create3() public {
        accounts[2] = Account(33 ,555 , 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C);
    }

    function create4() public {
        accounts[3] = Account({accountid:88,balance: 9898,owner: 0xdD870fA1b7C4700F2BD7f44238821C26f7392148});
    }
    function getter() public view returns (Account[4] memory){
        return accounts;
    }

    and can also be modified as dynamic array
*/