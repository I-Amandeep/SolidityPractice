// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract A{
string public name;
uint public age;

constructor(string memory _name,uint _age){
    name=_name;
    age=_age;}
        }

contract B{
    string public add;
    uint public salary;

    constructor(string memory _add,uint _salary)
    {  add=_add;
    salary=_salary;  }
}

contract C is A("Aman Deep",21),B("Delhi",10000000000)
{}

//order of execution
//1   B,A,D
contract D is B,A{
    constructor() A("Aman",22) B("New Delhi",400000000){
    }
}


//order of execution
//1   A,B,E
contract E is A,B{
    constructor(string memory _name,uint _age,string memory _add,uint _salary) A(_name,_age) B(_add,_salary){
   //  add=_add;
     //salary=_salary;
      }

 }

contract F is A("gaurav",21),B{
constructor(string memory _add,uint _salary) B(_add,_salary)
{
}

}
