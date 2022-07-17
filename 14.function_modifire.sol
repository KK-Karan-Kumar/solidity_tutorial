// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//Function modifires
//#Function Modifiers are used to modify the behaviour of a function. For example to add a prerequisite to a function.


contract modifires{
    address public owner;
    uint public count;
    constructor(){
        owner = msg.sender;
    }
    //creating funcion modifire
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }


	//modifiying the function using function modifier
    function sendMoney() public onlyOwner{
        count++;
    }
}