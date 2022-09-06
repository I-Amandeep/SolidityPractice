// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract fsArray {
    uint [5] public arr=[10,20,30,40,50];


constructor()
{ arr=[10,20,30,40,50];}



function arrayWithLoop(uint _x) public {
    for(uint i=0;i<arr.length;i++)
    {
        arr[i]=_x +i;
    }}

function createArray() public pure returns (uint)
{
uint [] memory arrMem= new uint[](3);
arrMem[1]=4444;
return arrMem[1];
}



      
function array() public returns(uint)
{
    uint temp;     
    temp=arr[4];    //get 
    
  arr[2]=2222;  //update
  
  delete arr[4];  //delete   it assigns the value as 0 as it do not changes the size of an array.length;
  
  uint len=arr.length;     //length of array

return len;
}

function returnArray() public view returns (uint[5] memory)
  {  return arr;    //it will return the values of constructor
}






}


// array is a reference type that means it points towards an address or stores address.
// uint ,int adddress is  value type. 
// inside memory   (functions)  we can use only fixed size array.


//we avoid returning array as it costs a lot of gas

