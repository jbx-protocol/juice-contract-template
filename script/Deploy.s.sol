// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Script.sol";

contract Deploy is Script {
    // TODO: Add params that are specific to each environment.
    function _run() internal {
        vm.broadcast();
        // TODO: Add logic that should run the same between all environments.
    }
}

contract DeployMainnet is Deploy {
    function setUp() public { }

    function run() public {
        _run(); // TODO: Pass in param that are specific to the Mainnet environment.
    }
}

contract DeployGoerli is Deploy {
    function setUp() public { }

    function run() public {
        _run(); // TODO: Pass in param that are specific to the Mainnet environment.
    }
}
