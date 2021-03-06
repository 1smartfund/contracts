pragma solidity ^0.4.23;

/*
    ERC20 Standard Token interface
*/
contract IERC223Receiver {
  
   /**
 * @dev Standard ERC223 function that will handle incoming token transfers.
 *
 * @param _from  Token sender address.
 * @param _value Amount of tokens.
 * @param _data  Transaction metadata.
 */
    function tokenFallback(address _from, uint _value, bytes _data) public returns(bool);
}