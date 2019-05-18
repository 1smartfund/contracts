pragma solidity ^0.4.23;

/*
    ICaller is the interface for contract which call other contract(like a date contract).
	The Caller contract *must* implements the calledUpdate function to change its calling contract reference.
*/

contract ICaller{
	function calledUpdate(address _oldCalled, address _newCalled) public;  // ownerOnly
	
	event CalledUpdate(address _oldCalled, address _newCalled);
}
