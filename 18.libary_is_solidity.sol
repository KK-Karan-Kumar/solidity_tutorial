// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// Libraries are similar to Contracts but are mainly intended for reuse. A Library contains functions which other contracts can call. Solidity have certain restrictions on use of a Library. Following are the key characteristics of a Solidity Library.

    // Library functions can be called directly if they do not modify the state. That means pure or view functions only can be called from outside the library.

    // Library can not be destroyed as it is assumed to be stateless.

    // A Library cannot have state variables.

    // A Library cannot inherit any element.

    // A Library cannot be inherited.

//like contract but not contract
library maths{
	//you can't define state variable
	//only for funcion
	function add(uint a,uint b)public pure returns(uint){
		return a+b;
	}
}

contract mymath{
	function call()public pure returns(uint){
		return maths.add(2, 3);
	}
}