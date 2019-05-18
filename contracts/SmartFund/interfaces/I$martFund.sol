pragma solidity ^0.4.23;
import "./IFund.sol";
import "./IOwned.sol";
import "./ICaller.sol";

// I$martFund interface, the interface of $martFund DAPP

contract I$martFund is IFund, IOwned, ICaller {

    function checkQuotaPropose(uint256 _sf, uint256 _eth) public view returns(bool);
    function propose(bytes32 _projectID, bytes32 _proposeID, IProject _project, uint256 _sf, uint256 _eth, string _mixInfo) public;
    function dispropose(bytes32 _projectID, bytes32 _disproposeID, string _mixInfo) public;
	function getVotes(bytes32 _ID, bytes32 _vote) public view returns(uint256);
    function vote(bytes32 _ID, bytes32 _vote) public;

	function forging(uint256 _msm, uint256 _target) public;
	function setAutoForging(uint256 _value) public;

    function purchase(bool _wantDividend, bool _nonInvate) public payable;
    function purchase(bool _wantDividend, bool _nonInvate, bytes32 _channel, bytes32 _recommendation) public payable;
    function cancelOrder(uint256 _mso, bool _fromHead) public returns(uint256 eth);
    function lock4Dividend(uint256 _msd2_ms) public returns(uint256 msd);
    function unlock4Circulate(uint256 _msd) public returns(uint256 msd2);

    function transferMS(address _to, uint256 _ms) public returns (bool success);
    function transferMSI(address _to, uint256 _msi) public returns (bool success);
    function transferMSM(address _to, uint256 _msm) public returns (bool success);
    function batchTransferMSM(address[] _tos, uint256[] _msms) public returns(uint256 msmSum);

    function apply4Redeem(uint256 _ms) public returns(uint256 ms2r);
    function cancelRedeem(uint256 _ms2r_msr) public returns(uint256 ms);
    function redeem(uint256 msr) public returns(uint256 eth);
    
}
