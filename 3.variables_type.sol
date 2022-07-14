// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


//solidity support three types of variables.
//# State Variables - Variables whose values are permanently stored in a contract storage.

//#Local Variables - Variables whose values are present till the function is executing.

//# Global variables - Special variables exist in the global namespace used to get information about to blockchain.

//solidity is a statically typed language, which means that the stte or local variable type needs to be specified during declaration. Each declared variable always have default value based on its type. There is no concept of "undefined" or "null".


contract variableType{
    
    uint public val = 4; //state variable
    function add() public pure returns(uint){
        
        uint val2 = 6; //local variable
        return val2;
    } 

    function global() public view returns(uint){
        return block.timestamp;//global variable
    }

    function addre() public view returns(address){
        return msg.sender;//global variable
    }
}