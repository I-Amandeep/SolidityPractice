// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Bytes
{



bytes5 public temp1;       
bytes7 public temp2;


function setvalue() public 
{
     temp1='abcde';
     temp2='12avfd';
}


function getDigit() public view  returns(bytes3)
{   return temp1[2];

}

function getlen() public view returns (uint)
{
    return temp1.length;
}

}



//1 byte =8 bit
//1 hexaDecimalDigit=4 bit
// 1 byte=2 hexadecimalDigit        digits are from 0-9
//  hexadecimal is in the form of 0x..............
