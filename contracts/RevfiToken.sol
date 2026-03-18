// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RevfiToken is ERC20 {
    constructor() ERC20("Revfi Token", "REVFI") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
