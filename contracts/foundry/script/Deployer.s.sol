// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";
import {OkidoToken} from "../src/OkidoToken.sol";
import {OkidoPropertyNFT} from "../src/OkidoPropertyNFT.sol";
import {FractionalOwnership} from "../src/FractionalOwnership.sol";
import {OkidoFinance} from "../src/OkidoFinance.sol";


contract DeployerScript is Script {
    function setUp() public {}

     function run() public returns(OkidoFinance, MyToken)  {
        vm.startBroadcast();
        OkidoToken token = new OkidoToken(1000000000000000000);
        OkidoPropertyNFT propertyNFT = new OkidoPropertyNFT();
        OkidoFinance okidoFinance = new OkidoFinance(address(propertyNFT), address(token));
        MyToken myToken = new MyToken(1000000);

        vm.stopBroadcast();
        return (okidoFinance, myToken);
        // return token;
    }
}