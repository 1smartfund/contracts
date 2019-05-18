pragma solidity ^0.4.23;
import "./ICalled.sol";
import "./ICaller.sol";
import "./IData.sol";
import "./IReserve.sol";
import "./IFormula.sol";

// contract I$martFund is IERC20Token, IERC223Token, IERC223Receiver {
contract I$martFundImpl is ICalled, ICaller {
    //function impl_price() view public returns(uint256);
    //function impl_incomeOf10k() view public returns(uint256);
    //function impl_yield7Day() view public returns(uint256);
    //function impl_amountOfOrderQueue() view public returns(uint256 amount);
    //function impl_amountOfWorkpointQueue() view public returns(uint256 amount);
    //function impl_rewardsFactor() view public returns(uint256 factor);             //for 721
    //function impl_additionalRewards() view public returns(uint256 amount);
    
    //function impl_mining(address _from, uint256 _height, bytes _header)public payable returns(uint256 msm);
    //function impl_mining(address _from, bytes _header)public payable returns(uint256 msm);
    //function impl_mining_uncle(address _from, bytes _header,bytes _uncleHeader,uint256 index) public payable returns(uint256 msm); 
    
    uint256 public constant DEQUEUE_DEFAULT             = 0;
    uint256 public constant DEQUEUE_ORDER               = 1;
    uint256 public constant DEQUEUE_INGOT               = 2;
    uint256 public constant DEQUEUE_DOUBLE              = 3;
    uint256 public constant DEQUEUE_DOUBLE_REVERSELY    = 4;
    uint256 public constant DEQUEUE_NONE                = 5;
    
	function data() public pure returns(IData){}
	function reserve() public pure returns(IReserve){}
	function formula() public pure returns(IFormula){}
	
    function dequeueOrder(uint256 gaslimit) public;
    function dequeueIngot(uint256 gaslimit) public;
    function dequeueAlternately(uint256 gaslimit) public;
    function dequeueDouble(uint256 gaslimit) public;
    function dequeue(bytes32 _when) public;
    

    function getVotes(bytes32 _ID, bytes32 _vote) public view returns(uint256);
	function impl_vote(address _holder, bytes32 _ID, bytes32 _vote) public;
    function impl_forging(address _from, uint256 _msm, uint256 _target) public;
    function impl_purchase(address _from, bool _wantDividend, bool _nonInvate, bytes32 _channel) public payable;
    function impl_cancelOrder(address _from, uint256 _msm, bool _fromHead) public returns(uint256 eth);
    function impl_lock4Dividend(address _from, uint256 _msd2_ms) public returns(uint256 msd);
    function impl_unlock4Circulate(address _from, uint256 _msd) public returns(uint256 msd2);

    //function impl_transferMS(address _from, address _to, uint256 _ms) public returns (bool success);
    //function impl_transferMSI(address _from, address _to, uint256 _msi) public returns (bool success);
    //function impl_transferMSM(address _from, address _to, uint256 _msm) public returns (bool success);
    //function impl_batchTransferMSM(address _from, address[] _tos, uint256[] _msms) public returns(uint256 msmSum);

    function impl_quotaApply4Redeem() view public returns(uint256);
    function impl_apply4Redeem(address _from, uint256 _ms) public returns(uint256 ms2r);
    function impl_cancelRedeem(address _from, uint256 _ms2r_msr) public returns(uint256 ms);
    function impl_redeem(address _from, uint256 msr) public returns(uint256 eth);
}
