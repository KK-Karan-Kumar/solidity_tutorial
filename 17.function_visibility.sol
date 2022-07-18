// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// In Solidity, you can control who has access to the functions and state variables in your contract and how they interact with them. This concept is known as visibility.

// A function’s visibility can be set to external, public, internal or private, while state variables only have three possible visibility modifiers; public, internal or private. The keyword external is not applicable to state variables.

// External
// External functions can only be called from outside the contract in which they were declared.

// Public
// Public functions and variables can be accessed by all parties within and outside the contract. When the visibility is not specified, the default visibility of a function is public.

// Internal
// Functions and variables declared with the internal keyword are only accessible within the contract in which they were declared, although they can be accessed from derived contracts. When visibility is not specified, state variables have the default value of internal.

// Private
// Functions declared with the private keyword are only accessible within the contract in which they were declared. Private functions are also the only functions that cannot be inherited by other functions.


contract maths{
	//public function
	function add()public pure returns(uint){
		return 1+2;
	}

	//private function
	function sub()private pure returns(uint){
		return 4-3;
	}

	//internal function
	function mul() internal pure returns(uint){
		return 3*3;
	}

	//external function
	function div()external pure returns(uint){
		return 4/2;
	}

}

contract mymath is maths{
	//you can call here only public external and internal funcion
}

contract mysum{
	maths mat = new maths();
	//using this you only call public and external
}