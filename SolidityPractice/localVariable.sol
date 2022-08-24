// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract localVariable
{
uint public age;         //state variable
bool public b;
address public newAdd;

function fun(uint _x,bool _y,uint _name,address _z) public returns (uint,bool,address) {
    uint i=32;                //local variable
    bool b1=true;
    i+=29;
    b1=false;
    age=_x;
    b=_y;
    newAdd=_z;
    return (i,b1,newAdd);

}

}


//Local variable are inside function
//global variable are build in variables
//local variable gets stored on memory( stack /ram) while state variable gets stored on blockchain(storage).
