//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Declare a contract named "Good"
contract Good {

// Declare a public variable "helper" of type "address"
address public helper;

// Declare a public variable "owner" of type "address"
address public owner;

// Declare a public variable "num" of type "uint"
uint public num;

// Constructor function that sets the value of "helper" and "owner"
constructor(address _helper) {
    // Set the value of "helper" to the input value "_helper"
    helper = _helper;
    // Set the value of "owner" to the address of the message sender
    owner = msg.sender;
}

// Function to set the value of "num"
function setNum( uint _num) public {

    // Call the "setNum" function of the contract at the "helper" address and pass in the value "_num"
    helper.delegatecall(abi.encodeWithSignature("setNum(uint256)", _num));
}
}