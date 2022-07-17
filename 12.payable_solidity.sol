// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


//Payable

//# in solidity we can use the keyword payable to specify that an address ora function can receive Ether

contract payables{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    //payable function
    function transferEth() payable public{
        //transter amout in owner
        owner.transfer(msg.value);
    }
}