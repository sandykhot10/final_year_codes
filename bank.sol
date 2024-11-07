// SPDX-License-Identifier: UNLICENCED
pragma solidity ^0.8.0;
contract bank{

    uint public balance = 0;

    function showBalance()public view returns(uint){
        return balance;
    }

    function withdraw(uint amt)public payable {
        require(amt > 0,"Amount should be grather than 0");
        balance -= amt;
    }


    function deposit(uint amt) public payable {
        require(amt > 0,"Amount should be grather than 0");
        balance += amt;
    }
}
