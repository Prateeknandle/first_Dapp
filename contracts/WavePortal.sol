// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
     uint256 totalWaves;
     address[] public wavingtome;

    constructor() {
        console.log("Hi, I'm constructor");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function storeacc() public {
        wavingtome.push(msg.sender);
        console.log("account added");
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}