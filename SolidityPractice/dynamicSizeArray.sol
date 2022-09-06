// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract dynamicSizeArray
{  
    uint[] public arr=[1,2,3,4,5,6,7,8,900,99,88];
 
function fun() public 
{  

    uint temp=arr[3];   //get
    arr[4]=4444;        //update
    delete arr[1];      //delete

    uint len=arr.length; //len
    arr.push(11111);     //push --------------add 11111 in the end
    arr.pop();           //pop the last element i.e 11111

}   


}