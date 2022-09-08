// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract fallback_receive
{   
 event log (string _fun,address _sender,uint _val,bytes _data);

fallback() external payable{  
    emit log("fallback",msg.sender,msg.value,msg.data);
                                   // data + ether ----> fallback
}




receive() external payable{
      emit log("receive",msg.sender,msg.value,"");
}                                  //ether----> receive

 function checkBal() public view returns(uint){
         return address(this).balance;
     }

}


//FALLBACK IS MORE SUPERIOR TO receive


/*  Fallback
Its is executed when a non existent function is called on the contract.
It is required to be marked external
It has no name ,takes no arguments and do not returns anything.
It can be defined once per contract
if not marked payable ,it will throw exception if contract receives ether.
Its main use is to directly send ETH to contract.





Fallback takes data in the form of bytes.
*/












