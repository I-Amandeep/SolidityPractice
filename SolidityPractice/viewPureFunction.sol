// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract viewandpure
{
    uint public age=20;

function viewfunc() public view returns (uint)
{
    return age;                            
}


function viewfunc1() public view returns (uint)
{
    return age+10;            //it is just adding 10 to age and returns it not assigns it to age.
}

function purefun() public pure returns(uint)
{
    return 1;
}

function purefun2(uint _x) public pure returns(uint)
{
    return _x;
}

function simplefun() public
{
    age=age+100;
} 


}



//view ---read only.
//pure----neither read nor write.
//simple--changes state variable.