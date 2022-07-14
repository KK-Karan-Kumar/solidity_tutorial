// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//solidity functions

//A function is a block of code that perform a task. it can be called andreused multiple times, You can pass informatio to a function and it can send information back


//solidity variable scopes

//# public - public state variables can be accessed internaly as wll as via messages. for a public state variable, an automatic getter function is generated.

//# Internal - internal state variables can be accessed only internally from the current contract or contract deriving from it without using this.

//# Privite - Private state variables can ve accessed onlu internally from the current contract they are defined not in the derived contract from it.


contract functions{
    uint public val = 4;

    //pure for not depend on state variable
    function add() public pure returns(uint){
        return 3+4;
    }

    //view if you working on state variable
    function show() public view returns(uint){
       return val;
    } 

    function showval() public view returns(uint){
        val + 5;
       return val;
    } 
}