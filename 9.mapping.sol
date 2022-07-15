// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// Mapping
// #Mapping in Solidity acts like a hash table or dictionary in any other language. These are used to store the data in the form of key-value pairs, a key can be any of the built-in data types but reference types are not allowed while the value can be of any type. Mappings are mostly used to associate the unique Ethereum address with the associated value type.

contract mappings{

    // it's like key value pair
    mapping(address => uint) public balances;

    function setBalances(uint bal)public{
        balances[msg.sender] = bal;       
    }

    function getBal()public view returns(uint ){
        return balances[msg.sender];
    }
}