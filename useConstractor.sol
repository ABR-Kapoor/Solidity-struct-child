// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Wallet {
    address sender;
    uint valueSet;

    function payContract() public payable {
        sender = msg.sender;
        valueSet = msg.value;
    }
}

contract paymentReceived {
    address public from;
    uint public amt;
}
