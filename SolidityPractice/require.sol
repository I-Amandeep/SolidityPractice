// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Require
{  address public owner=msg.sender;
  uint public age=25;

 function CheckRequire(uint _x) public{
     age=age+5;
     require(_x>2,"value of x is less than 2");
}


function onlyOwner() public {

    require(owner==msg.sender,"You are not the owner");
          age=age-10;
}


}





//require is used in error handling for function inside contract.
//require main job is  1.input validation   2. access control
// Helps in saving gas.