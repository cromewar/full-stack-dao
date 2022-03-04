//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private number;

    event ValueChanged(uint256 newNumber);

    function store(uint256 newNumber) public onlyOwner {
        number = newNumber;
        emit ValueChanged(newNumber);
    }

    function retreive() public view returns (uint256) {
        return number;
    }
}
