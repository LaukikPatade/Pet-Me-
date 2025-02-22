


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract PawCoin is ERC20Capped, Ownable {
    constructor(uint256 cap) 
        ERC20("PawCoin", "PC") 
        ERC20Capped(cap * (10 ** uint256(decimals()))) 
        Ownable(msg.sender) 
    {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }

    function rewardUser(address user, uint256 amount) public onlyOwner {
        _transfer(owner(), user, amount * (10 ** uint256(decimals())));
    }
}
