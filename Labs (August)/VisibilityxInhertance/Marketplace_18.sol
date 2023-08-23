// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract marketPlace{
    
    mapping (address => uint) public balance;

    event purchase(address buyer,address sender, uint value);


    function register(address _addr, uint amount) public {
        require(amount != 0, 'Balance should be valid');
        balance[_addr]= amount;
        
    }

    function buy(address _buyer, address _sender, uint cash)public virtual {
        require(balance[_buyer]>0,'account not registered'); // to check whether the person is verified
        require(cash != 0, 'inserted amount should be valid');
        balance[_buyer] -=cash;
        balance[_sender] +=cash;
        emit purchase(_buyer, _sender, cash);
    }

    //item to be sended

    mapping (string =>uint) public item;

    function setItem(string memory _item, uint price)public {
        item[_item]= price;
    }

    function sell(address _seller, address _buyer, uint _price)public virtual  returns (string memory){
        require(balance[_seller]>0||balance[_buyer]>0,"one of the users is not registered");
        require(_price>0,"the price should be valid");
        require(balance[_seller]==balance[_buyer],'users are same');
        return ("item will be shipped to the buyer's location");
    }

}

//address(this) shows the balance of the contract

contract PremiumSeller is marketPlace{
    uint public fee;
    constructor(uint _fee){
        fee=  _fee;
    }

    function sell(address _seller, address _buyer, uint _price)public virtual override  returns (string memory){
        super.sell(_seller,_buyer,_price);
        balance[_seller] -= _price;
        balance[address(this)] +=_price*fee/100; //will add the balance to the contract

    }
}

contract regularBuyer is marketPlace{
}

contract VIPBuyer is marketPlace{
    uint public discount;
    constructor(uint _discount){
        discount = _discount;
    }

    
    function buy(address _buyer, address _sender, uint cash)public virtual override {
        require(balance[_buyer]>0,'account not registered'); // to check whether the person is verified
        require(cash != 0, 'inserted amount should be valid');
        uint disount_amount= cash *discount/100;
        uint finalamount= cash - disount_amount;
        balance[_buyer] -=finalamount;
        balance[_sender] +=finalamount;
        emit purchase(_buyer, _sender, cash);
        
    }

}











