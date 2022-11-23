// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Box {
    uint256 private _value;

    // emited when the stored value changes
    event ValueChanged(uint256 value);

    // stores a new value in the contract
    function store(uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // reads the last stored value
    function retrieve() public view returns (uint256) {
        return _value;
    }
}