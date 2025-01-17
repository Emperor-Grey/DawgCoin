// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {DawgToken} from "../src/DawgToken.sol";

contract DawgScript is Script {
    DawgToken public dawg;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = 0x7c7f9b2aac806a014c9a26d31d1c21a123aa6e8c130374369b4b5365e7bc347b;

        vm.startBroadcast(deployerPrivateKey);

        dawg = new DawgToken();

        vm.stopBroadcast();
    }
}
