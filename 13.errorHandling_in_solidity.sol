// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//error handling
//# Solidity provides various functions for error handling. Generally when an error occurs, the state is reverted back to its original state. Other checks are to prevent unauthorized code access. Following are some of the important methods used in error handling −

    // assert(bool condition) − In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted. This method is to be used for internal errors.

    // require(bool condition) − In case condition is not met, this method call reverts to original state. - This method is to be used for errors in inputs or external components.

    // require(bool condition, string memory message) − In case condition is not met, this method call reverts to original state. - This method is to be used for errors in inputs or external components. It provides an option to provide a custom message.

    // revert() − This method aborts the execution and revert any changes done to the state.

    // revert(string memory reason) − This method aborts the execution and revert any changes done to the state. It provides an option to provide a custom message.




contract errors{
    address public owner;
    uint public count;
    constructor(){
        owner = msg.sender;
    }

    // only owner can call this funcion
    function call()public{

        count++;
        //is will return true and false
        //if it's false then funcion go further othervise it will be revet
        // require(msg.sender == owner);

        require(msg.sender == owner,"only owner can do this");
    }

    // only owner can call this funcion
    function call2()public{

        count++;
        //is will return true and false
        //if it's false then funcion go further othervise it will be revet
        // require(msg.sender == owner);

        //require return the remaning gas but assert will not
        //use asset only for dev purpose and depub purpose not use in production
        assert(msg.sender == owner);
    }

    // only owner can call this funcion
    function call3()public{

        count++;
        if(msg.sender != owner){
            //it's like require but revert is old methods
            //it will return the ramaniger gas and show error in terminal like require
            revert("caller is not ower");
        }
        
    }
}
