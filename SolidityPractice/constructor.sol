// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract  Constructor
{
     uint public age;
     address public owner;
constructor(uint _age, address _owner) 
{  age=_age;
   owner=_owner;

}

}   




// constuctor is used to initialize state variable or to set owner.