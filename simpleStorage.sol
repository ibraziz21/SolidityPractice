//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SimpleStorage {
//A smart contract that can read, write, increment, and decrement a variable’s value

uint public setValue;
constructor(uint val){
    setValue=val;
}

function  increment() public{
    setValue++;
}

function decrement() public{
    setValue--;
}

}
