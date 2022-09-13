// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract dataLocation
{
// uint[] public arr=[1,3,7,9,22]; 

// function Storage() public{
// uint[] storage arrs =arr;
// arr[3]=99;
// }

// function mem() public view{
// uint[] storage arrs =arr;
// arrs[1]=198;
// }

function Memory(string memory str,uint[] memory arr) public        //gas cost 29961
{}

function Calldata (string calldata str,uint[] calldata arr) public      //gas cost 26928
{}

}