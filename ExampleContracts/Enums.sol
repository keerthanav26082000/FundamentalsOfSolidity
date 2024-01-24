// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    enum Status {
        Ordered,
        Shipped,
        Delivered,
        Cancelled
    }

    Status public status;

    function setStatus(Status _status) public {
        status = _status;
    }

    function getStatus() public view returns (Status) {
        return status;
    }
}