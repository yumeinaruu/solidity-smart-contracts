// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Storage {
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
}