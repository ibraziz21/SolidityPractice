//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
// this contract allows a user to reserve a spot in the meeting by sending 1 gwei to the pool.
//once the user attends the meeting, the sent gwei is returned. If the user does not attend, they forfeit their deposit
// only rsvp users can attend the meeting

contract rsvp {
struct userDetails{
  
    uint bal;
    bool Rsvpd;  
    bool Attending;
}
    mapping (address=>userDetails) public userCheck;
    
userDetails public uDets;
function Rsvp()public payable{
    require(msg.value==1 gwei,"You must send exactly 1 Gwei");
        userCheck[msg.sender].bal=msg.value;
        userCheck[msg.sender].Rsvpd=true;
}

function attend() public {
    require(userCheck[msg.sender].Rsvpd==true && userCheck[msg.sender].bal==1 gwei,"You are not on the list");
        userCheck[msg.sender].bal=0;
        payable(msg.sender).transfer(1 gwei);
        userCheck[msg.sender].Attending=true;
}
}
