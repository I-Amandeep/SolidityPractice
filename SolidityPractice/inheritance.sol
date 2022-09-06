// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A
{ uint public x=100;
address public owner=msg.sender;

function fun1() public pure returns (string memory)
{return "I am in contract A";}

function fun2() public pure returns (string memory)
{return "I am in contract A";}

function fun3() public pure virtual returns (string memory)      //virtual keyword helps us in modifying the function in derived contract
{ return "I am in contract A";}

function fun4() public pure virtual returns (string memory)
{return "I am in contract A";}

}

contract B is A
{    function fun3() public pure override  returns (string memory)
{ return "I am in contract B";}

function fun4() public pure virtual override  returns (string memory)
{return "I am in contract B";}

}

contract C is B
{  function fun4() public pure virtual override  returns (string memory)
{return "I am in contract C";}


}