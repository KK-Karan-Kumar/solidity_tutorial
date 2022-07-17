// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// Event
// #Event is an inheritable member of a contract. An event is emitted, it stores the arguments passed in transaction logs. These logs are stored on blockchain and are accessible using address of the contract till the contract is present on the blockchain. An event generated is not accessible from within contracts, not even the one which have created and emitted them.


contract events{
    //crating the events
    event transfer(address _from,address
      _to, uint _amounts);
    // show all transer rate for one user
    //here i am used two times
    // you can only give 3 index if you give 4 it will produce errors
    //not so much costly but little bit 

    event transferamount(address indexed _from,address indexed _to, uint _amounts);


    //emiting the events
    function trans(address to,uint amount) public {
        emit transfer(msg.sender, to, amount);
    }

}
