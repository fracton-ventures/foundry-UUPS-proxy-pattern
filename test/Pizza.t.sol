// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/Pizza.sol";
import "../src/PizzaV2.sol";
import "forge-std/Test.sol";

contract ContractTest is Test {
    Pizza internal pizza;
    PizzaV2 internal pizzaV2;

    function setUp() public {
        pizza = new Pizza();
        pizzaV2 = new PizzaV2();
        pizza.initialize(8);
    }

    function testEat() public {
        pizza.eatSlice();
        assertEq(pizza.slices(), 7);
    }

    function testUpgrade() public {
        pizza.upgradeTo(address(pizzaV2));
        assertEq(pizza.slices(), 7);
    }
}
