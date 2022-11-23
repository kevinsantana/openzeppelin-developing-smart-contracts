// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Auth from the access-control subdirectory
import "./access-control/Auth.sol";

// import ownable from the OpenZeppelin Contracts library
import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private _value;
    // Auth private _auth;

    // emited when the stored value changes
    event ValueChanged(uint256 value);

    // constructor() {
    //     _auth = new Auth(msg.sender);
    // }

    // stores a new value in the contract
    function store(uint256 value) public onlyOwner {
        // require that the caller is registered as and adm in Auth
        // require(_auth.isAdministrator(msg.sender), "Unauthorized");

        _value = value;
        emit ValueChanged(value);
    }

    // reads the last stored value
    function retrieve() public view returns (uint256) {
        return _value;
    }
}