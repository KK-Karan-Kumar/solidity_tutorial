// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


//solidity variable scopes

//# public - public state variables can be accessed internaly as wll as via messages. for a public state variable, an automatic getter function is generated.

//# Internal - internal state variables can be accessed only internally from the current contract or contract deriving from it without using this.

//# Privite - Private state variables can ve accessed onlu internally from the current contract they are defined not in the derived contract from it.



contract varscope{
    //create the getter function automatic
    uint public val = 4;


    //don't create the getter function automatic
    uint internal val2 = 8;

    //you can only use this inside this contract not in other contract
    uint private val3 =1;

    function getvar2() public view returns (uint){
        return val2;
    }

    function getvar() public view returns(uint){
        return val;
    }
}


//inharitance 
contract varscope2 is varscope{
    //you can't use val3 privite variable here
    function get2() public view returns(uint){
        return val;
    }
}


contract varscope3{
    varscope myscope = new varscope();

    function getvar1() public view returns(uint){
        //but you can't do with internal and private variable
        return myscope.val();
    }
}