// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Enum{

    enum Status
    { Pending,Shipped,Accepted,Rejected,Cancel
    }

    Status public status;

function getStatus() public view returns(Status)
    {
        return status;
    }

function setStatus(Status _status) public{
        status=_status; 
    }


function reject() public
{status=Status.Rejected; }


function reset() public
{
 delete status;
}






}

//1.enums are user defined data type
//2.Maitenance of smart contract is easier
//3.Readibility increases
//4.Reduces the chances of error.
