// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Functions {

    struct Student {
        string name;
        uint256 phoneNo;
    }

    struct Marks {
        uint C;
        uint CPP;
        uint Java;
    }

    mapping(string => Student) private studentDetails;
    mapping(string => Marks) private studentMarks;

    function getTotalMarks() private pure returns (uint) {
        return 300;
    }

    function calculateMarks(string memory _email) internal view returns (uint) {
        uint totalMarks = getTotalMarks();
        uint a = studentMarks[_email].C;
        uint b = studentMarks[_email].CPP;
        uint c = studentMarks[_email].Java;
        uint res = ((a + b + c) * 100) / totalMarks;
        return res;
    }

    function registerStudent(string calldata _email, string memory _name, uint256 _phoneNo) public {
        studentDetails[_email].name = _name;
        studentDetails[_email].phoneNo = _phoneNo;
    }

    function enterMarks(string calldata _email, uint c, uint cpp, uint java) external {
        require(
            (bytes(studentDetails[_email].name).length != 0),
            "Student does not exists"
        );
        studentMarks[_email].C = c;
        studentMarks[_email].CPP = cpp;
        studentMarks[_email].Java = java;
    }

    function getResult(string memory _email) public view returns (uint) {
        uint result = calculateMarks(_email);
        return result;
    }

    function getStudentDetails(string calldata _email) public view returns (Student memory) {
        return studentDetails[_email];
    }
}