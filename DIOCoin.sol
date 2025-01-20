// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Define the IERC20 interface
interface IERC20{
    /* FUNCTIONS */
    // This function returns the total supply of the token
    function totalSupply() external view returns(uint256);

    // This function returns the token balance of a specific account
    function balanceOf(address account) external view returns (uint256);

    // This function returns the allowance a spender has on the owner's tokens
    function allowance(address owner, address spender) external view returns(uint256);

    // This function transfers tokens from the caller's account to a recipient
    function transfer(address recipient, uint256 amount) external returns (bool);

    // This function approves a spender to spend an amount on behalf of the caller
    function approve(address spender, uint256 amount) external returns (bool);

    // This function transfers tokens from one account to another using an allowance
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /* EVENTS */
    // Event emitted on successful transfer
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Event emitted on approval of an allowance
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ERC20 token contract DIOToken implementing the ERC20 interface
contract DIOCoin is IERC20{

    // Define token details
    string public constant name = "DIO Coin";
    string public constant symbol = "DIO";
    uint8 public constant decimals = 18;

    // Mapping to store the balance of each address
    mapping (address => uint256) balances;

    // Mapping to store the allowances
    mapping(address => mapping(address => uint256)) allowed;

    // Define the total supply of tokens
    uint256 totalSupply_ = 10 ether;

    // Constructor to initialize the total supply to the creator of the contract
    constructor(){
        balances[msg.sender] = totalSupply_;
    }

    // Return the total supply of the token
    function totalSupply() public override view returns (uint256) {
        return totalSupply_;
    }

    // Get the balance of a specific token owner
    function balanceOf(address tokenOwner) public override view returns (uint256) {
        return balances[tokenOwner];
    }

    // Transfer a specified amount of tokens from the function caller to the receiver
    function transfer(address receiver, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] = balances[msg.sender] - numTokens;
        balances[receiver] = balances[receiver] + numTokens;
        emit Transfer(msg.sender, receiver, numTokens);
        return true;
    }

    // Approve a delegate to spend a specific amount of tokens on behalf of the caller
    function approve(address delegate, uint256 numTokens) public override returns (bool) {
        allowed[msg.sender][delegate] = numTokens;
        emit Approval(msg.sender, delegate, numTokens);
        return true;
    }

    // Get the number of tokens approved for a delegate
    function allowance(address owner, address delegate) public override view returns (uint256) {
        return allowed[owner][delegate];
    }

    // Transfer tokens on behalf of the owner to a buyer, if allowed
    function transferFrom(address owner, address buyer, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[owner], "Insufficient balance");
        require(numTokens <= allowed[owner][msg.sender], "Allowance exceeded");

        balances[owner] = balances[owner] - numTokens;
        allowed[owner][msg.sender] = allowed[owner][msg.sender] - numTokens;
        balances[buyer] = balances[buyer] + numTokens;
        emit Transfer(owner, buyer, numTokens);
        return true;
    }
}