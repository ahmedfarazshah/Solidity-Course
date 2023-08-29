// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract Mapper {
    mapping(string => uint)public NameToBalance;    

    function set(string memory name, uint bal) public {
        NameToBalance[name] = bal;
    }

    function get(string memory name) public view returns (uint){
        return NameToBalance[name];
    }

    function reset(string memory name) public{
        delete NameToBalance[name];
    } 

}   

contract Mappings{

    mapping(address => mapping(string => mapping (string => uint) )) public AddrWalletToName;

    function AddValue(address _addr, string memory _walletname, string memory _name, uint bal) public{
        AddrWalletToName[_addr][_walletname][_name] = bal;
    }
    function get(address _addr, string memory _walletname,string memory surname) public view returns(uint){
        return AddrWalletToName[_addr][_walletname][surname];
    }
    function remove(address _addr, string memory _walletname,string memory surname) public{
        delete AddrWalletToName[_addr][_walletname][surname];
    }

}
