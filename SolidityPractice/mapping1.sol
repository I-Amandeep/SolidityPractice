// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Mapping 
{
mapping(uint=>string) public emp_id;

function setIds() public 
{  emp_id[12]="AMAN";
   emp_id[23]="Manish";
   emp_id[42]="Piyush";
   emp_id[53]="Prince";
   emp_id[22]="Jayanth";
   emp_id[43]="Rishav";

}

function getIds(uint _x) public view returns(string memory)
{
    return emp_id[_x];
}

}

// mapping is in key value pair
//we can make keys in the form of value,enum,contract.