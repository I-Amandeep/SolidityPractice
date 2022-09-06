// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A 
{   uint private x=10;    //only within the contract
    uint internal y=100;  // within the contract and in derived class
    uint public z=1000; // everywhere

    function check1() private pure returns (string memory)
    {
        return "private";
    }

    function check2() internal pure returns (string memory)
    {
        return "internal";
    }


      function check3() external pure returns (string memory)
    {
        return "external";
    }

      function check4() public pure returns (string memory)
    {
        return "public";
    }

   function checkAll() public view returns(uint,uint,string memory,string memory)
   {
       return (x,y,check1(),check2());                             //private function check 1 and internal function check2 is accessible inside another function
   }                                                               // here external function check4 will throw error as it is external .

}




contract B is A         //A is the parent of B or--- A's child is B
{  
    uint a=y;
    uint b=z;
    string public s1=check2();
     string public s2=check4();

}




contract C 
{  A obj =new A();
   uint public a=obj.z();

   function anotherCaller() public view returns(string memory) 
   {
       return obj.check3();
   } 
}





// Visibility is only defined for state Variable and Functions.
// Visibility are of 4 types..
//Private  --- Accessible within own contract only
//Internal --- Accessible within and in child contract.
//External --- Not Accessible inside own contract and in child or derived contract
//Public   --- Accessible everywhere.

//State vaiables are by default internal 
//Functions are by default public

// GAS consumption increases   Private<Internal<External<Public     but security decreases.

