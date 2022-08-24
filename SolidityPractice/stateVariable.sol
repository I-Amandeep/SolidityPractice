// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract stateVariable
{

uint public salary=100000;    //1st way for initialization    ---- state variable


uint public age;             //2nd way of initialization using constructor.
constructor()
{
age=25;
}

function setAge() public    //3rd way of initialization using function.
{
age=30;
}

}



//we avoid usind state variable because it directly gets stored on blockchain(contract storage) resulting increase in gas fee

//state variable are inside contract but outside function.