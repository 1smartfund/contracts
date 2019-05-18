pragma solidity ^0.4.23;
import "./IProject.sol";

contract IFund {
	function returnProfit(bytes32 _projectID, uint256 _sf) public payable;
	function returnDisinvestment(bytes32 _projectID, uint256 _sf) public payable;
}