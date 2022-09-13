// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract hashFunction {

function hashKeccak256(uint _x,string memory name,address _add) public pure returns (bytes32)
{
 return keccak256(abi.encodePacked(_x,name,_add));
}


function hash1Keccak256(uint _x,string memory name,address _add) public pure returns (bytes32)
{
 return keccak256(abi.encode(_x,name,_add));         //abi.encode and abi.encodePacked works differently generates different has for the same data.

}


function hashSha256(uint _x,string memory name,address _add) public pure returns (bytes32)
{
 return sha256(abi.encodePacked(_x,name,_add));
}

function hashRipemd160(uint _x,string memory name,address _add) public pure returns (bytes32)
{
 return ripemd160(abi.encodePacked(_x,name,_add));
}




}