// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevfiGame {
    mapping(address => uint256) public rewards;

    function earnReward() public {
        rewards[msg.sender] += 10;
    }

    function claimReward() public {
        require(rewards[msg.sender] > 0, "No rewards");
        rewards[msg.sender] = 0;
    }
}
