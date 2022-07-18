// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


// Inheritance is a way to extend functionality of a contract. Solidity supports both single as well as multiple inheritance. Following are the key highlighsts.

    // A derived contract can access all non-private members including internal methods and state variables. But using this is not allowed.

    // Function overriding is allowed provided function signature remains same. In case of difference of output parameters, compilation will fail.

    // We can call a super contract's function using super keyword or using super contract name.

    // In case of multiple inheritance, function call using super gives preference to most derived contract.


contract a{
	uint public num = 1;

	function showdata()public pure returns(string memory){
		return "hello sombra";
	}
}

contract b is a{
	function getVal() public view returns(uint){
		//you can call class a state variables
		return num;
	}

	//you can also all showdata here
}