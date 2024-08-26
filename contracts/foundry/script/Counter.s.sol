// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

     function run() public returns(Counter) {
        vm.startBroadcast();
        Counter counter = new Counter();
 //test
        vm.stopBroadcast();
        return counter;
    }
}