// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {StudentDB} from "./student_database.sol";

contract StudentDBManager{

    StudentDB[] public mystudentdblist;

    function create_studentdb_contract() public {
        StudentDB newStudentDB = new StudentDB();
        mystudentdblist.push(newStudentDB);
    }

    function add_student(uint256 studentdbindex, string memory name, uint256 age,
    uint256 student_id, string memory dept) public {
        StudentDB mystudentdb = mystudentdblist[studentdbindex];
        mystudentdb.add_student(name, age, student_id, dept);
    }

    // function show_student_info(uint256 studentdbindex) public {
    //     StudentDB mystudentdb = mystudentdblist[studentdbindex];
    // }


}