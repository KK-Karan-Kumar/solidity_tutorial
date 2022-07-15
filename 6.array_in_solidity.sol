// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;



contract array{
    //fix-size array
    uint[5] public numbers = [1,2,3];
    //dynamic array
    uint[] public number2 = [2,3,4,5,3,2,3];

    string[] gamec = ["sona","Sombra","janna","ahir","elsa","anna","olaf"];
    function getArr1() public view returns(uint[5] memory){
        return numbers;
    }

     function getArr2() public view returns(uint[] memory){
        return number2;
    }

    function getName() public view returns(string[] memory){
        return gamec;
    }

    //get length of array
    function getLength() public view returns(uint){
        return gamec.length;
    }

    function setnewname(string memory name)public returns(bool){
        gamec.push(name);
        return true;
    }

    //remove last element of array
    function removelast()public{
        return gamec.pop();
    }

}