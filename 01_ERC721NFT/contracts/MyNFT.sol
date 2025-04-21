// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/access/Ownable.sol";


contract MyNFT is ERC721, Ownable {
    string public message;  // pub message 
    constructor() ERC721("fixed-element", "E-I-XE-NNX") { // infinie gas 2010200
        message = "Play-to-earn: Gaming and earning - smeesala";
        _mint(msg.sender, 1);
    }
}
