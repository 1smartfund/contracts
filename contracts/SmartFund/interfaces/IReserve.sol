pragma solidity ^0.4.23;
import "./ICalled.sol";

contract IReserve is ICalled {
    // these function isn't abstract since the compiler emits automatically generated getter functions as external
    function balanceOfShares() public pure returns(uint256) {}
    function balanceOfOrder() public pure returns(uint256) {}
    function balanceOfMineral() public pure returns(uint256) {}
    function balanceOfColdWallet() public pure returns(uint256) {}
    function balanceOfStack() public pure returns(uint256) {}
    
	function saveToColdWallet(uint256 _amount) public;
    function restoreFromColdWallet() public payable;
    function setColdWallet(address _coldWallet, uint256 _ratioAutoSave, uint256 _ratioAutoRemain) public;
    function depositShares() public payable;
    function depositOrder() public payable;
    function depositMineral() public payable;
    function order2Shares(uint256 _amount) public;
    function mineral2Shares(uint256 _amount) public;
    function withdrawShares(uint256 _amount) public returns(bool atonce);
    function withdrawSharesTo(address _to, uint256 _amount) public returns(bool atonce);
    function withdrawOrder(uint256 _amount) public returns(bool atonce);
    function withdrawOrderTo(address _to, uint256 _amount) public returns(bool atonce);
    function withdrawMineral(uint256 _amount) public returns(bool atonce);
    function withdrawMineralTo(address _to, uint256 _amount) public returns(bool atonce);
	function() public payable;
}
