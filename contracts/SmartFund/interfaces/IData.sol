pragma solidity ^0.4.23;
import "./ICalled.sol";

contract IData is ICalled
{
    // these function isn't abstract since the compiler emits automatically generated getter functions as external
    function bu(bytes32) public pure returns(uint256) {}
    function ba(bytes32) public pure returns(address) {}
    //function bi(bytes32) public pure returns(int256) {}
    //function bs(bytes32) public pure returns(string) {}
    //function bb(bytes32) public pure returns(bytes) {}
    
    function bau(bytes32, address) public pure returns(uint256) {}
    //function baa(bytes32, address) public pure returns(address) {}
    //function bai(bytes32, address) public pure returns(int256) {}
    //function bas(bytes32, address) public pure returns(string) {}
    //function bab(bytes32, address) public pure returns(bytes) {}
    
    function bbu(bytes32, bytes32) public pure returns(uint256) {}
    function bbs(bytes32, bytes32) public pure returns(string) {}

    function buu(bytes32, uint256) public pure returns(uint256) {}
    function bua(bytes32, uint256) public pure returns(address) {}
	function bus(bytes32, uint256) public pure returns(string) {}
    function bas(bytes32, address) public pure returns(string) {}
    //function bui(bytes32, uint256) public pure returns(int256) {}
    //function bus(bytes32, uint256) public pure returns(string) {}
    //function bub(bytes32, uint256) public pure returns(bytes) {}
    
    function bauu(bytes32, address, uint256) public pure returns(uint256) {}
	//function baau(bytes32, address, address) public pure returns(uint256) {}
    function bbau(bytes32, bytes32, address) public pure returns(uint256) {}
    //function buuu(bytes32, uint256, uint256) public pure returns(uint256) {}
    function bbaau(bytes32, bytes32, address, address) public pure returns(uint256) {}
    
    function setBU(bytes32 _key, uint256 _value) public;
    function setBA(bytes32 _key, address _value) public;
    //function setBI(bytes32 _key, int256 _value) public;
    //function setBS(bytes32 _key, string _value) public;
    //function setBB(bytes32 _key, bytes _value) public;
    
    function setBAU(bytes32 _key, address _addr, uint256 _value) public;
    //function setBAA(bytes32 _key, address _addr, address _value) public;
    //function setBAI(bytes32 _key, address _addr, int256 _value) public;
    //function setBAS(bytes32 _key, address _addr, string _value) public;
    //function setBAB(bytes32 _key, address _addr, bytes _value) public;
    
    function setBBU(bytes32 _key, bytes32 _id, uint256 _value) public;
    function setBBS(bytes32 _key, bytes32 _id, string _value) public;

    function setBUU(bytes32 _key, uint256 _index, uint256 _value) public;
    function setBUA(bytes32 _key, uint256 _index, address _addr) public;
	function setBUS(bytes32 _key, uint256 _index, string _str) public;
    //function setBUI(bytes32 _key, uint256 _index, int256 _value) public;
    //function setBUB(bytes32 _key, uint256 _index, bytes _value) public;

	//function setBAAU(bytes32 _key, address _token, address _addr, uint256 _value) public;
	function setBAUU(bytes32 _key, address _addr, uint256 _index, uint256 _value) public;
    function setBBAU(bytes32 _key, bytes32 _id, address _holder, uint256 _value) public;
	//function setBUUU(bytes32 _key, uint256 _index,  uint256 _index2, uint256 _value) public;
    function setBBAAU(bytes32 _key, bytes32 _id, address _from, address _to, uint256 _value) public;
}
