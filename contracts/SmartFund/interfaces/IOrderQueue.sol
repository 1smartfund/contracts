pragma solidity ^0.4.23;

contract IOrderQueue {
	function enqueueOrder(address _holder, uint256 _amount, bool _wantDividend, bool _nonInvate, bytes32 _channel) public;
	function cancelOrder(address _from, uint256 _amount) public returns(uint256);
	function cancelOrderByOrderNum(address _from, uint256 _orderNum, uint256 _amount) public returns(uint256);
	function dequeueOrder(uint256 gaslimit) public returns(uint256);
	function dequeueOrder2(uint256 gaslimit, bool force) public returns(uint256);
}

//contract IFoundry {
//	function weightedAverage(uint256 _value1, uint256 _weight1, uint256 _value2, uint256 _weight2) public pure returns(uint256);
//	function calcForgingResult(address _holder, uint256 _amount)public view returns(uint256 msAmount, uint256 msdAmount);
//  function calcRateDequeue(uint256 _reserveBalance, uint256 _listAmount) public view returns(uint256 rateDequeue);
//  function calcDealQuota(uint256 _reserveBalance, uint256 _listAmount) public view returns(uint256);
//	function getWaitTimeWith(uint256 amount) public view returns(uint256);
//	function getHolderWaitTime(address _holder) public view returns(uint256);
//
//	function autoForging(address _pool, address _miner, uint256 _msm) public;
//	function enqueueIngot(address _holder, uint256 _amount, uint256 _target) public;
//	function dequeueIngot(uint256 reserveBalance) public returns(uint256);
//}