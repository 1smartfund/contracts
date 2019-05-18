pragma solidity ^0.4.23;

/*
    ERC223Token Standard Token interface
*/
contract IERC223Token {
    function name() public view returns (string);
    function symbol() public view returns (string);
    function decimals() public view returns (uint8);
    function totalSupply() public view returns (uint256);
    function balanceOf(address _holder) public view returns (uint256);

    function transfer(address _to, uint256 _value) public returns (bool success);
    function transfer(address _to, uint _value, bytes _data) public returns (bool success);
    function transfer(address _to, uint _value, bytes _data, string _custom_fallback) public returns (bool success);
    
    event Transfer(address indexed _from, address indexed _to, uint _value, bytes _data);
}