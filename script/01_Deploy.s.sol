// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Script } from "@forge-std/Script.sol";

contract Deploy is Script {

    function run() public {
        uint256 deployerPrivateKey_ = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey_);

        _deployDataAvailabilityCommittee();
    
        vm.stopBroadcast();
    }

    /// @dev deploy data availabigetStateUpdateInitData()lity committee contract
    function _deployDataAvailabilityCommittee() internal {
        // load DA threshold from env
        uint256 numSignaturesRequired_ = vm.envUint("STARKEX_DA_THRESHOLD");
        require(numSignaturesRequired_ != 0, "STARKEX:DDAC:ZERO_NUM_SIGNATURES");

        // load DA members from env
        address[] memory committeeMembers_ = vm.envAddress("STARKEX_DA_COMMITTEE", ",");

        // validate settings
        require(committeeMembers_.length >= numSignaturesRequired_, "STARKEX:DDAC:OUT_OF_BOUNDS");

        // deploy committee contract
        address committee_ = deployCode("Committee.sol", abi.encode(committeeMembers_, numSignaturesRequired_));

        require(committee_ != address(0), "STARKEX:DDAC:ZERO_ADDRESS");
    }
}
