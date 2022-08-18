// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract FunctionIntro
{ 
    uint public age=21;

function add(uint _x,uint _y) public pure returns(uint)
{
    return _x+_y;
} 

function changeAge() public
{
    age+=1;
}


function getAge() public view returns(uint)
{
    return age;
}


function fun() public 
    {}


}

function dummy(uint _x) pure returns(uint)   //function can be written inside as well as outside contract
{
    return _x^10;
}