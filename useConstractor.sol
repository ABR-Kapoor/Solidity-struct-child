// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract Wallet {

    PayemntReceived public payment;

    function payContract() public payable {
        payment = new PayemntReceived (msg.sender, msg.value);
    }
}

contract PayemntReceived {
    address public from;
    uint public amt;

    constructor(address _from, uint _amt){
        from = _from;
        amt = _amt;
    }
}
