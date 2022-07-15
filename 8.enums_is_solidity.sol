// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;



// Enums
//# Enums are the way of creating user-defined data types, it is usually used to provide names for integral constants which makes the contract better for maintenance and reading. Enums restrict the variable with one of a few predefined values, these values of the enumerated list are called enums. Options are represented with integer values starting from zero, a default value can also be given for the enum. By using enums it is possible to reduce the bugs in the code.

contract enumes{
    enum size
   {
     SMALL,
     MEDIUM,
     LARGE
   }

   size public choice = size.MEDIUM;



   //set size small
   function setSmall() public{
       choice = size.SMALL;
   }


   //set size medium
    function setMedium() public{
       choice = size.MEDIUM;
   }


   //set size large
    function setLarge() public{
       choice = size.LARGE;
   }
}