pragma solidity ^0.4.23;
import "./IOwned.sol";
import "./ICaller.sol";

/*
    Called contract interface
*/
contract ICalled is IOwned {
    // this function isn't abstract since the compiler emits automatically generated getter functions as external
    function callers(address) public pure returns (bool) { }

    function appendCaller(address _caller) public;  // ownerOnly
    function removeCaller(address _caller) public;  // ownerOnly
    
    event AppendCaller(ICaller _caller);
    event RemoveCaller(ICaller _caller);
}
