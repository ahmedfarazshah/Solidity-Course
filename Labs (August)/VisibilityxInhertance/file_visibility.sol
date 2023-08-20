// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Public{

    string public publicmsg = "Public Variable is Called";

    function getpublic() public view returns(string memory){

        return publicmsg;

    }

}

contract Public_son is Public{
} 


contract publicVisibility{
    uint public publicdata;
}
contract child_ofPublic is publicVisibility{
    
    function returnvalue()public returns (uint){
        publicdata = 123456;
        return publicdata;
    }
}

// private visiblity modifier


contract Private{

    string private  privatemsg = "Private Variable is Called";

    function getprivate() private view returns(string memory){
        return privatemsg;
    }
    
    function getprivatevar() public view returns(string memory){
        return privatemsg;
    }
    
    function getprivatefunc() public view returns(string memory){
    //You are calling 'getprivate()' function here
    //It returns a string value which is then returned by the
    // 'getprivatefunc()' function
    return getprivate();
    }
}

contract child_private is Private{

    function modify()public  returns (string memory){
        //the privatemsg will not be able to called duet to the private visibility modifier
        
        // string  privatemsg= 'just to check whether it modifies or not';
        // return  privatemsg;
    }

}


contract Bank{
    uint private balance;

    function deposit(uint funds)public {
        balance +=funds;
    }
}

contract bankUser is Bank{
    function get()public returns (uint){
        // return balance; as the balance is a private variable it can't be called
    }
}


//          Internal Visiblity Modifier


contract Internal{

    string internal internalmsg = "Internal Variable is Called";

    function getinternal() internal view returns(string memory){
        return internalmsg;
    }
    
    function getinternalvar() public view returns(string memory){
        return internalmsg;
    }

    function getinternalfunc() public view returns(string memory){
        return getinternal();
    }

}

contract child_internal is Internal{
    function get()public returns (string memory){
        return internalmsg = "life is changing";
    }
}



contract familyFortune{
    uint internal inheritance;

    function addInheritance(uint amount) internal {
        inheritance += amount;  
    }
}

contract Heir is familyFortune{
    function heirAddition(uint _amount) public {
        addInheritance(_amount);
        // return inheritance; // to display the amount in the output area of terminal
    }
}


    //                   External Visibilty Modifier

contract External{

    // string external externalmsg = "External Variable is Called";

    
    function getexternal() external pure returns(string memory){
        return "External Function";
    }
    
    // function getexternalfunc() public view returns(string memory){
    // return getexternal();
    // }
}

contract child_external{

    function getexternalfunc() public pure returns(string memory){
    return getexternalfunc();
    }
}



contract Apartment{

    uint internal tenantcount;

    function newtenant(uint person)external {
        tenantcount+= person;
    }

}


contract Tenant is Apartment{

    // function tenant_addition(uint _person) public {
        // tenantcount(_person);
    // }

    function getTenant_count() public view returns (uint) {
        return tenantcount;
    }

}










