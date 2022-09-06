// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract DynamicBytes
{  
   bytes public temp;
  
   constructor ()
   {temp='123abcdef';}
 
function pushElement() public {
    temp.push('a');
}

function popElement() public {
    temp.pop();

}

function getLength() public view returns (uint)
{  return temp.length;
}









}