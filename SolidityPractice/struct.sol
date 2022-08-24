// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Struct
{
   struct Emp{
       string name;
      uint age;
       address acc;
   }


   Emp public emp;
   constructor(string memory _name,uint _age,address _acc)
    {emp.name=_name;
    emp.age=_age;
    emp.acc=_acc;  }

 Emp[] public emps;

function setValues() public {
    Emp memory emp1=Emp("Aman Deep",21,0x617F2E2fD72FD9D5503197092aC168c91465E7f2);
    Emp memory emp2=Emp({acc:msg.sender,name:"akash",age:34});
   
    Emp memory emp3;
    emp3.name="piyush";
    emp3.age=20;
    emp3.acc=0x617F2E2fD72FD9D5503197092aC168c91465E7f2;

    // emp=emp1;
    emps.push(emp1);
    emps.push(emp2);
    emps.push(emp3);

    emps.push(Emp("manish",99,msg.sender));


}


}