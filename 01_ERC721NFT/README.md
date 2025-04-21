# MyERC721 NFT Token

Welcome to my smart contract project! This project demonstrates the creation, deployment, and testing of a **custom ERC-721 NFT smart contract** on the **Polygon Amoy Testnet** using Solidity.


## Project Overview

This project aims to give learners hands-on experience with:
- Developing an Ethereum Virtual Machine (EVM)-based smart contract.
- Understanding the **ERC-721 Token Standard**.
- Using the **Polygon Amoy Testnet** for testing and deployment.
- Exploring tools like **Remix IDE**, **MetaMask**, and **Ethereum Gas Fees** in test environments.


## Key Features

- ERC-721 Token with **custom name, symbol, and message**.
- Built with **Solidity**.
- Deployed to the **Polygon Amoy Testnet**.
- Interacts via **Remix IDE** + **MetaMask**.

## For Non-Technical Viewers

Think of this project as **digital certificates (NFTs)** that you own, proving something unique—like an art piece, a document, or a collectible.

Each NFT:
- Is **one-of-a-kind**.
- Has a **name** (like "MyCertificateNFT").
- Has a **symbol** (like "$CERT").
- Carries a **message** (like "Issued to Jane Doe").

And all of it runs on **blockchain**—a secure, open system that no one controls.


## For Developers

### 🛠 Tools Used
- **Solidity v0.8.x**
- **Remix IDE** (https://remix.ethereum.org)
- **MetaMask Wallet**
- **Polygon Amoy Testnet** (https://chainlist.org/?testnets=true&search=amoy)


## Smart Contract Breakdown

```solidity
pragma solidity ^0.8.x;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    string public message;

    constructor() ERC721("MyCertificateNFT", "CERT") {
        message = "Issued to Jane Doe";
        _mint(msg.sender, 1);
    }
}
```
- ```ERC721``` is the standard for NFTs.
- ```name``` and symbol``` are defined via the constructor.
- The ```message``` is a custom public variable.
- ```mint()``` assigns one token to the deployer.

## How to Run This Project

You do not need to install anything locally—everything runs in the browser using Remix IDE.

1. Setup MetaMask
    - Download from https://metamask.io
    - Create a wallet.
    - Connect to Polygon Amoy Testnet via https://chainlist.org

2. Get Test MATIC
    - Use the Amoy Faucet: https://learnweb3.io/faucets/polygon_amoy
    - Paste your wallet address and claim test MATIC.

3. Use Remix IDE
    - Go to Remix IDE
    - Create a new file ```MyNFT.sol``` and paste the smart contract code.
    - Compile with Solidity 0.8.x compiler.

4. Deploy to Polygon Amoy
    - Connect MetaMask to Remix via "Injected Web3".
    - Deploy contract.
    - Confirm the transaction in MetaMask.

5. Interact with Your NFT
    - Call the ```name()```, ```symbol()```, and ```message()``` functions to verify deployment.
    - Check ownership with ```ownerOf(1)```.
