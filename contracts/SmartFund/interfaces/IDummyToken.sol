pragma solidity ^0.4.23;
import "./IERC20Token.sol";
import "./IERC223Token.sol";
import "./IERC223Receiver.sol";
import "./ICaller.sol";
import "./IOwned.sol";
import "./ITokenOperator.sol";

contract IDummyToken is IERC20Token, IERC223Token, IERC223Receiver, ICaller, IOwned{
    // these function isn't abstract since the compiler emits automatically generated getter functions as external
    function operator() public pure returns(ITokenOperator) {}
    //ITokenOperator public operator;
}