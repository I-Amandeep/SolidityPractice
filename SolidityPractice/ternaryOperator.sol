// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Ter
{

function fun1(uint _x) public pure returns (string memory)
{
    string memory val=_x>100 ? "greater": "equal to or smaller than";

    return val;
    
}


}