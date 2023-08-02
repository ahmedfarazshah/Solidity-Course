// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TicketBookingSystem{
    
    enum TicketType{
        Economy,
        Bussiness,
        FirstClass
    }
    enum Days {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }
    struct Ticket{
        string passenger;
        TicketType ticketType;
        Days day;
        bool isbooked;
    }

    Ticket[] public ticket;

    function bookTicket(string memory _passengers, TicketType _ticketype, Days _days)
       public{
           ticket.push(Ticket(_passengers, _ticketype, _days, true));
       } 

    // getter
    // for whole ticket info / for whole entry of struct
    /*
    function getTicketType(uint256 _index) public view returns (Ticket memory){
        return ticket[_index];
        */
    
    // for just one data type in struct
    function getTicketType(uint256 _index) public view returns (TicketType){
        return ticket[_index].ticketType;
    }
    // to get the day for the reserved ticked
    function getTicketday(uint256 _index) public view returns (Days){
        return ticket[_index].day;
    }
    //require statement can also be used for toggle
    // function toggleStatus(uint256 _index) public view returns (bool){
    //     if (ticket[_index].isbooked){
    //         return ticket[_index].isbooked;
    //     }else {
    //         false;
    //     }
    // }
    // ! will invert if true then false and vice versa
    // status will be inverted
    function togglestatus(uint256 _index) public{
        ticket[_index].isbooked=!ticket[_index].isbooked;
        }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    








}
