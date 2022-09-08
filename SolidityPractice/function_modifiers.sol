// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Modifier{

    modifier sameCode()
    { for(uint _i=0;_i<10;_i++)
    {    //code

    }
    _;
         //code
    }


function fun1() public pure sameCode returns (string memory){
// for(uint _i=0;_i<10;_i++)
// {
// }

return "fun1 say hi";
}


function fun2() public pure returns (uint _x){
for(uint _i=0;_i<10;_i++)
{
}
// return 44;
_x=44;         //another way of returning value.
} 




function fun3() public view sameCode returns(address){
// for(uint _i=0;_i<10;_i++)
// {
// }


return msg.sender;
}

}





//modifiers are special type of function.
//It gives the functionality of code reusability.
//Main use of modifier is to add function pre Requisite.