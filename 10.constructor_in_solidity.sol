// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//constructor
//# A constructor is a special method in any object-oriented programming language which gets called whenever an object of a class is initialized. It is totally different in case of Solidity, Solidity provides a constructor declaration inside the smart contract and it invokes only once when the contract is deployed and is used to initialize the contract state. A default constructor is created by the compiler if there is no explicitly defined constructor.

contract Base{
    address public owner;

    uint public bal;

    constructor(uint _bal){
        owner = msg.sender;
        bal = _bal;
    }
}

//method 1
contract Derived is Base(10){

}

//method2
contract Derived2 is Base{
    constructor() Base(30){
        
    }
}