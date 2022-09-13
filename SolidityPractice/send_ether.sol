// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract sendETH {

    address payable public getter=payable(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);
    
    receive() external payable{}

function checkbal() public view returns (uint)
{
    return address(this).balance;
}

function send() public {
    bool sent=getter.send(100000000000000);
    require(sent,"trans is failed");
}



function TRANSFER(address payable gttr)  public {                 //here we can directly put the address
    gttr.transfer(100000000000000);
}


function Direct1Acc2other(address payable getter)public payable {               //here we are directly transferring balance from one account to other.         
    getter.transfer(msg.value);
}




function call() public{
//    (bool sent,bytes memory data)= getter.call{value:1000000000000}("Hello aman it is transferred");
   (bool sent,)= getter.call{value:1000000000000}("");
       require(sent,"trans is failed");
}


}

//send ,transfer,call(mostly preferred call beacuse we are free to set gas limit while in transfer and require it has a gas limit of 2300)
// these are basically used to transfer ether from smart contract to some specific account;