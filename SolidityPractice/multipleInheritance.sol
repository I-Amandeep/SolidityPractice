// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A
{ uint public a;

  constructor(){
      a=121;
  }
function funA() public{
    a=501;}
}

 contract B is A 
{ uint public b;

  constructor(){
      b=121;
      a=50;             //when we deploy contract c it will give a=50 because of depth first.
  }
function funB() public{
    b=501;
}
}

contract C is A, B {         //more baselike should be mentoioned first
                            // C inherits functionalities and values from right to left. Depth First


}