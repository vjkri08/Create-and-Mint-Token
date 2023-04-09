// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Vijtoken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint 200 tokens to msg.sender
        // 1 ether = 10 ** 18 Wei
        // 1 token = 1 * 10 ** 18
        _mint(msg.sender, 200 * 10**uint(decimals()));
    }

}
