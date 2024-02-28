// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract StudentDB{
    struct Student{
        string name;
        uint256 age;
        uint256 student_id;
        string dept;
    }

    Student[] public student_list;

    mapping (string => Student) public name_to_id;
    mapping (uint256 => Student) public id_to_name;

    function add_student(string memory _name, uint256 _age, 
    uint256 _student_id,string memory _dept) public{
        student_list.push(Student(_name,_age,_student_id,_dept));
        name_to_id[_name] = Student(_name, _age, _student_id, _dept);
        id_to_name[_student_id] = Student(_name, _age, _student_id, _dept);
    }
}