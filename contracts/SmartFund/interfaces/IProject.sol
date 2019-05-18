pragma solidity ^0.4.23;
import "./ICaller.sol";

contract IProject is ICaller {
	function invest(bytes32 _projectID, uint256 _sf) public payable;
	function disinvest() public;
}