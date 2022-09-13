// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Immutable
{   
    address public immutable owner;
address public constant owner2 =address(1); 

constructor(address _owner){
owner= _owner;

}


}

// we can initialize immutable as inline or with the help of constructor
// in terms of gas cost      simple>immutable>constant