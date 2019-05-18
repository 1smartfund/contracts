pragma solidity ^0.4.23;
import "./IOwned.sol";
import "./ICaller.sol";
import "./IReserve.sol";

/*
    Formula interface
*/
contract IFormula is IOwned, ICaller {
    uint8 public constant MAX_PRECISION = 127;
    uint32 public constant MAX_WEIGHT = 1000000;
    function reserve() public pure returns(IReserve) { }

    function totalSupply() public view returns (uint256);
    function balanceOf(address _addr)public view returns(uint256);
    function price() view public returns(uint256);
    //function costOfTxShares() view public returns(uint256);
    
	function calcTimedQuota(uint256 _rest, uint256 _full, uint256 _timespan, uint256 _period) public pure returns (uint256);
    function calcEma(uint256 _emaPre, uint256 _value, uint32 _timeSpan, uint256 _period) public view returns(uint256);
    //function calcFactorReward(uint256 _dailyYield) public view returns(uint256);
	function calcFactorMining(uint256 _roi) public view returns(uint256);
    
	function calcOrderTo$fAmount(uint256) public view returns(uint256);
	//function calc$martFundAmount(uint256 _amount, uint256 _factorRestrain) public view returns(uint256);

    function calculatePurchaseReturn(uint256 _supply, uint256 _connectorBalance, uint32 _connectorWeight, uint256 _depositAmount) public constant returns (uint256);
    function calculateRedeemReturn(uint256 _supply, uint256 _connectorBalance, uint32 _connectorWeight, uint256 _sellAmount) public constant returns (uint256);
	
    function power(uint256 _baseN, uint256 _baseD, uint32 _expN, uint32 _expD) public view returns (uint256, uint8);
    function power2(uint256 _baseN, uint256 _baseD, uint32 _expN, uint32 _expD) public view returns (uint256, uint8);
    function ln(uint256 _numerator, uint256 _denominator) public pure returns (uint256);
    
}
