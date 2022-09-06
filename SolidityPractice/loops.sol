// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract loops{

             
function loop() public pure returns (uint){
    uint count=0;
uint j=0;


    // for(uint i=0;i<10;i=i+2)
    //    {count=count+5;}


    // while (j<10)
    // { count =count+5;
    // j=j+2;
    // }



    do{
        count=count+5;
        j=j+2;
        // if(j==8)
        // break;         
    }
    while(j<10);

     return count;

}
}




// loops not works on contract level, it works on function level.
//continue skips that value/part of loop while break breaks the whole loop.
