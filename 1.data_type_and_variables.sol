// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//value type

//value type variables store their own data. These are the basic data types provided by solidity. these types of variables are awlways passed by value. The variables are copied wherever they are used in function arguments a=or assignment. Value type data types in solidity are listed Below:

//# Boolean : This data type accepts only two values true or false.

//# integer : This data type is used to store integer values. int and uint are used to declare signed and unsigned interger respectively.

//# Address : Address hold a 20-byte value which represent the size of an Ethereum address. and address can be used to get balance or the transfer a balance by balance and transfer method respectively.

//# Bytes and Strings: Bytes are used to store a fixed-sized chareacter set while the steing is used to store the character set equal to or more then a byte. The lenth of bytes is from 1 to 32 . while the string has a dynmic lenth, Byte has an advantage that it used less gas, so better to use when we know the length of data.

//Enums: it is used to create user-defined data types, used to assign a name to an integer constant which makes the contact more readable, maintainable, and less prone to errors. Options of enums can be represented by unsigned interger values started from 0.


contract Variable{
    //all are atate variable
    //can't be negative
    uint userlength = 10;
    //not possile
    // uint userlength = -10;



    // cant be nagative
    int amount = 10;
    int amount2 = -200;//possible
    int8 amount3 = 43; //range -128 to 127 
    
    //only true and false
    bool active = true;
    //max is bytes32 min in bytes1
    //here string length is 6 to i am useing bytes6 string lenght can be less then 6 but not more then 6
    bytes6 symbole = "sombra";

    //can store as long as possible
    string name = "the name is so long";

    //address 
    address add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}


//int range formula positive 2^(n-1)-1 negative 2^(n-1)
// Uint range Formula: (2^n)-1