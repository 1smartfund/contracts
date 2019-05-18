pragma solidity ^0.4.23;
//import "./IOwned.sol";
import "./IERC20Token.sol";

/*
    Smart Token interface
     is IOwned, IERC20Token
*/
contract ISmartToken{
    function disableTransfers(bool _disable) public;
    function issue(address _to, uint256 _amount) public;
    function destroy(address _from, uint256 _amount) public;
	//function() public payable;
}
