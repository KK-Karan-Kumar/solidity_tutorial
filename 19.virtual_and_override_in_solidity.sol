// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// function overriding
//a function that allows an inheritang contract to override its begavior will be markde at virtual. The funcion that overrides that function should be marked as overrid,

contract base{
	//now you can change the val funcion in inherited contract
	function val() public pure virtual returns(uint){
		return 5;
	}
	
}

contract main is base{
	//now this function return 54 not 6
	//function name should the same as last one
	function val() public pure override returns(uint){
		return 54;
	}



}