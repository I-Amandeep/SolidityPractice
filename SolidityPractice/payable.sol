// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract Payable
{  address payable public owner=payable(msg.sender);


  constructor() payable {
      
  }

    function getEth() payable public {
     }

     function checkBal() public view returns(uint){
         return address(this).balance;
     }

}



//Different colored boxes in deployed contract have different meaning
// 1. Red color :-payable
// 2. Blue color :-view,pure,state variable
// 3. Yellow color :- simple transactional function

//1 ether=10^18 wei
