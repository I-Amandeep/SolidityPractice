// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract auction
{ address public owner=msg.sender;

modifier onlyOwner()
{ require(owner==msg.sender,"you are not the owner");
 _;

}

function startAuction() public view{
require(owner==msg.sender,"you are not the owner");
//code.
}
 


function stopAuction() public view onlyOwner{

}



function checkAuction() public view onlyOwner{}


uint public age=30;
modifier temp(uint _x)
{
    age=age+_x;
    _;
}


function changeAge(uint _y) public temp(_y)
  {}  
}