// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


// In solidity we can use wei, finney, szabo or ether as a suffix to a literal to be used to convert various ether based denominations. Lowest unit is wei and 1e12 represents 1 x 1012.

// assert(1 wei == 1);
// assert(1 szabo == 1e12);
// assert(1 finney == 1e15);
// assert(1 ether == 1e18);
// assert(2 ether == 2000 fenny);

// Time Units

// Similar to currency, Solidity has time units where lowest unit is second and we can use seconds, minutes, hours, days and weeks as suffix to denote time.

// assert(1 seconds == 1);
// assert(1 minutes == 60 seconds);
// assert(1 hours == 60 minutes);
// assert(1 day == 24 hours);
// assert(1 week == 7 days);

contract uints{
	modifier amount{

		require(msg.value>1);
		_;
	}

	//this function only run when your value is more then 1 like written in modifire amount function
	function send() public payable amount{

	}
}