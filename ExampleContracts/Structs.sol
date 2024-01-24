//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    struct Student {
        string name;
        uint roll_num;
        bool qualified;
    }

    Student[] public students;

    function addStudent(
        string calldata _name,
        uint _roll_num,
        bool _qualified
    ) public {
        students.push(Student(_name, _roll_num, _qualified));
    }

    function addStudents(
        string calldata _name,
        uint _roll_num,
        bool _qualified
    ) public {
        Student memory student;

        student.name = _name;
        student.roll_num = _roll_num;
        student.qualified = _qualified;

        students.push(student);
    }
}