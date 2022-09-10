// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract MagicTest is Test {
    /// @dev Address of the SimpleStore contract.  
    MagicNumber public magicNumber;

    /// @dev Setup the testing environment.
    function setUp() public {
        magicNumber = MagicNumber(HuffDeployer.deploy("MagicNumber"));
    }

    /// @dev Ensure that you can set and get the value.
    function testMagic() public {
        uint256 res = magicNumber.whatIsTheMeaningOfLife();
        console.log(res);
        assertEq(res, 42);
    }
}

interface MagicNumber {
    function whatIsTheMeaningOfLife() external returns (uint256);
}
