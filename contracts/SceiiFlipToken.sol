// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.28;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract SceiiFlipToken is ERC20("SceiiFlipToken", "SFT") {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function mint(address to, uint amount) public {
        require(msg.sender == owner, "You aren't the owner");
        _mint(to, amount);
    }
}
