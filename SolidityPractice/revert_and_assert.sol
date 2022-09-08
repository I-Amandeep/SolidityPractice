// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Require
{  address public owner=msg.sender;     
  uint public age=25;

//  function CheckRequire(uint _x) public{
//      age=age+5;
//      require(_x>2,"value of x is less than 2");}                    

error throwError(string,address);             //custom error.

 function CheckRevert(uint _x) public{
     age=age+5;
    if(_x<2){
        // revert("value of x is less than 2");
        revert throwError("value of x is less than 2",msg.sender);  //revert uses less gas compare to require. and provide the benifit of custom error
    }
 }


function onlyOwner() public {

    if(owner!=msg.sender)
    {revert("You are not the owner"); }
          age=age-10;
}

//Assert

function checkOwnership() public view{
assert (owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

}


}