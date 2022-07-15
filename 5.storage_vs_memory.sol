// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Storage and Memory keywords in Solidity are analogous to Computer’s hard drive and Computer’s RAM. Much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls. The Solidity Smart Contract can use any amount of memory during the execution but once the execution stops, the Memory is completely wiped off for the next execution. Whereas Storage on the other hand is persistent, each execution of the Smart contract has access to the data previously stored on the storage area.

// Every transaction on Ethereum Virtual Machine costs us some amount of Gas. The lower the Gas consumption the better is your Solidity code. The Gas consumption of Memory is not very significant as compared to the gas consumption of Storage. Therefore, it is always better to use Memory for intermediate calculations and store the final result in Storage.

//     1.State variables and Local Variables of structs, array are always stored in storage by default.
//     2.Function arguments are in memory.
//     3,Whenever a new instance of an array is created using the keyword ‘memory’, a new copy of that variable is created. Changing the array value of the new instance does not affect the original array.


contract sorvsmem{

    //this is in storage that's why this will take some amount of ether (cost)
    uint public val = 34;
    //this two function running in ram not in not in database so no need to worry about cost

    //for uint int and address data type you don't need to write memory keyword it's already their
    function sendadd()public view returns(address){
        return msg.sender;
    }

    //but for other datatype you need to spacify memory keyword
    function add(string memory name)public pure returns(string memory){
        return name;
    }
}