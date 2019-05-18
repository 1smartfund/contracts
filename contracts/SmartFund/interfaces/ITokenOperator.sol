pragma solidity ^0.4.23;
import "./ISmartToken.sol";
import "./ICalled.sol";
import "./ICaller.sol";
import "./IDummyToken.sol";

/*
    ITokenOperator Standard Token interface, the ControllerToken MUST implement those functions in fact control the DummyToken
*/
contract ITokenOperator is ISmartToken, ICalled, ICaller {
    // this function isn't abstract since the compiler emits automatically generated getter functions as external
    function dummy() public pure returns (IDummyToken) {}
    
	function emitEventTransfer(address _from, address _to, uint256 _amount) public;

    function updateChanges(address) public;
    function updateChangesByBrother(address, uint256, uint256) public;
    
    function token_name() public view returns (string);
    function token_symbol() public view returns (string);
    function token_decimals() public view returns (uint8);
    
    function token_totalSupply() public view returns (uint256);
    function token_balanceOf(address _owner) public view returns (uint256);
    function token_allowance(address _from, address _spender) public view returns (uint256);

    function token_transfer(address _from, address _to, uint256 _value) public returns (bool success);
    function token_transfer(address _from, address _to, uint _value, bytes _data) public returns (bool success);
    function token_transfer(address _from, address _to, uint _value, bytes _data, string _custom_fallback) public returns (bool success);
    function token_transferFrom(address _spender, address _from, address _to, uint256 _value) public returns (bool success);
    function token_approve(address _from, address _spender, uint256 _value) public returns (bool success);
    
    function fallback(address _from, bytes _data) public payable;                      		// eth input
    function token_fallback(address _token, address _from, uint _value, bytes _data) public returns(bool);    // token input from IERC233
}