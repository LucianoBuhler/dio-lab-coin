# DIO Coin Solidity Project

This repository contains the implementation of an ERC20 token, "DIO Coin," also known as "DIO." The contract is written in Solidity and is designed to work with Ethereum-based blockchain development.

## Table of Contents

- [Project Description](#project-description)
- [Technologies Utilized](#technologies-utilized)
- [Getting Started](#getting-started)
- [Installation and Configuration](#installation-and-configuration)
- [Usage](#usage)
- [Methods and Events](#methods-and-events)
- [Contributing](#contributing)
- [License](#license)

## Project Description

This project implements a basic ERC20 token smart contract using Solidity. The DIO Coin is created to demonstrate fundamental concepts of token contracts, including transferring tokens, managing allowances, and handling balances. The project leverages well-known tools like Ganache and MetaMask to facilitate local development and testing.

## Technologies Utilized

- **Ganache**
  - A personal Ethereum blockchain for development that allows you to deploy contracts, develop applications, and run tests in a controlled environment.

- **Remix IDE**
  - A powerful, web-based development environment for writing and testing Solidity smart contracts.

- **Solidity**
  - A high-level, statically typed programming language designed for developing smart contracts on the Ethereum blockchain.

- **MetaMask**
  - A browser extension that acts as a cryptocurrency wallet, enabling users to manage identities and interact with Ethereum-based applications directly from the web.

## Getting Started

To start working with this project, you will need to set up your development environment and gather the necessary tools and packages.

## Installation and Configuration

### Install MetaMask

1. **Install MetaMask Extension:**
   - Visit the [MetaMask website](https://metamask.io/) and add the MetaMask extension to your browser (Chrome, Firefox, etc.).
   
2. **Set Up Your Wallet:**
   - Follow the on-screen instructions to create a new wallet or import an existing one.

3. **Connect to Local Network:**
   - Open MetaMask and click on the network selection dropdown. Add your Ganache settings to connect to the local blockchain (Ganache).

### Install Ganache

1. **Download and Install:**
   - Go to the [Ganache website](https://trufflesuite.com/ganache/) and download the appropriate version for your operating system.
   
2. **Launch Ganache:**
   - Open Ganache and start a new workspace. This will provide you with a local blockchain running on `http://127.0.0.1:7545`.

3. **Examine Accounts and Balances:**
   - Note the Ethereum accounts and balances created by Ganache for testing purposes.

### Deploy Using Remix

1. **Access Remix IDE:**
   - Open [Remix IDE](https://remix.ethereum.org/) in your web browser.

2. **Create a New File:**
   - In the file explorer, create a new Solidity file named `DIOCoin.sol`.

3. **Copy Contract Code:**
   - Copy the provided Solidity code into `DIOCoin.sol`.

4. **Compile the Contract:**
   - Go to the "Solidity Compiler" tab and compile the `DIOCoin.sol` file.

5. **Deploy the Contract:**
   - Navigate to the "Deploy & Run Transactions" tab.
   - Select "Injected Provider - Metamask" as the environment to connect Remix to MetaMask and Ganache.
   - Choose the account to deploy from and deploy the contract.

## Usage

- **Transactions:** Use Remix to interact with the deployed smart contract, including transferring tokens and managing allowances through available functions.

- **MetaMask:** Switch between accounts on MetaMask to simulate transactions between different users on the local Ethereum network.

## Methods and Events

### Methods

- **`totalSupply()`**
  - Returns the total supply of the DIO Coin.

- **`balanceOf(address account)`**
  - Fetches the balance of a specified account.

- **`allowance(address owner, address spender)`**
  - Gets the allowance a spender has from the owner.

- **`transfer(address recipient, uint256 amount)`**
  - Transfers tokens from the caller's account to a specified recipient.

- **`approve(address spender, uint256 amount)`**
  - Approves a spender to spend a specified number of tokens on behalf of the caller.

- **`transferFrom(address sender, address recipient, uint256 amount)`**
  - Transfers tokens from one account to another based on an existing allowance.

### Events

- **`Transfer(address indexed from, address indexed to, uint256 value)`**
  - Emitted when a transfer of tokens occurs.

- **`Approval(address indexed owner, address indexed spender, uint256 value)`**
  - Emitted when a spender is authorized to spend on behalf of an owner.

## Contributing

Contributions to this project are welcome. Feel free to fork the repository, make improvements, and submit pull requests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
