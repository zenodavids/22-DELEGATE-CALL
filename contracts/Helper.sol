// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Declaring a contract named "Helper"
contract Helper {

// Declaring a public variable "num" of type uint
uint public num;

// Declaring a function named "setNum" that takes in an input of type uint named "_num"
function setNum(uint _num) public {
    // Setting the value of "num" to be equal to the input "_num"
    num = _num;
}
}