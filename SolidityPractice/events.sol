// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Event
{ 
     event balance(address account,string message,uint val);
  
   function setdData (uint _val) public 
   {emit balance(msg.sender,"has value",_val);

   }
}


contract chatApp
{
    event chat(address indexed _from,address _to,string message);    //we can create indexed for maximum 3 parameter.

    function sendMES(address to_,string memory message_) public{
     emit chat (msg.sender,to_,message_);
    } 

}