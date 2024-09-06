// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private number;

    // Event to notify frontend when number is updated
    event NumberUpdated(uint256 newNumber);

    // Function to set the number
    function setNumber(uint256 _number) public {
        number = _number;
        emit NumberUpdated(_number);
    }

    // Function to get the number
    function getNumber() public view returns (uint256) {
        return number;
    }
}
