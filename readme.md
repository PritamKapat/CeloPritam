WorkChain Records ⛓️

A simple Smart Contract for On-Chain Job Assignment Tracking.

📜 Project Description

WorkChain Records is a foundational Solidity smart contract designed for beginners to understand how to store structured data immutably on the blockchain. It implements a decentralized, tamper-proof ledger for tracking completed job assignments and maintaining a permanent, verifiable history of contributions.

This project is an excellent starting point for learning about structs, mappings, and basic write/read functions in Solidity.

⚙️ What It Does

The contract functions as a simple database where users can permanently log details of a completed job or task:

Submission: Any address can call the submitAssignment function with a text description of the work.

Indexing: The contract automatically assigns a unique, sequential ID to the submission.

Immutability: Once logged, the record (including the submitter's address and timestamp) cannot be changed, providing a clear audit trail.

🌟 Features

The WorkChainRecords contract provides the following core functionalities:

🧠 Beginner-Friendly: Easy-to-read Solidity structure using basic building blocks (structs, mappings, events).

🔒 Immutable Records: Once a record is submitted, it cannot be altered or removed from the chain.

⛓️ On-Chain Transparency: All assignment records are publicly verifiable by anyone.

⏱️ Timestamped Proof: Every submission is recorded with the block timestamp for accurate proof of work.

Function / Variable

Type

Description

submitAssignment(string memory _description)

Write (Transaction)

Creates a new assignment record and stores it on the blockchain. Requires gas.

getAssignment(uint256 _id)

Read (View)

Retrieves the full structured data (ID, submitter, description, timestamp) for any existing record.

getTotalAssignments()

Read (View)

Returns the total number of work assignments submitted so far.

records(uint256)

Read (View)

Public getter for raw data access via the assignment ID.

AssignmentSubmitted

Event

Emitted when a new record is created, allowing off-chain applications to track activity efficiently.

📄 Smart Contract Details

Language: Solidity ^0.8.0

Framework: Remix / Hardhat compatible

Network: Ethereum Testnets (e.g., Sepolia, Goerli)

🔗 Deployed Smart Contract Link

You can view the contract on any supported block explorer at this address:

👉 [XXX]

💻 Smart Contract Code

Below is the complete source code for the WorkChainRecords.sol contract:

```solidity
//paste your code
````


🚀 How to Run Locally

This guide assumes you are using the Remix IDE, a popular in-browser tool for Solidity development.

1.Clone the repository

```bash
   git clone https://github.com/your-username/XXX.git
   cd XXX
   ```


2.**Open Remix IDE**

   * Visit [Remix IDE](https://remix.ethereum.org)
   * Paste your smart contract code inside a new file (`VotingDApp.sol`)

3. **Compile & Deploy**

   * Select **Solidity Compiler** → version `0.8.20`
   * Deploy using **Injected Web3** to connect your **Celo wallet**


4. Interact with the Contract

Call submitAssignment() with a description string to add a new record.

Use getAssignment() with the index (starting at 0) to retrieve the saved data.

🧩 Future Enhancements

Access Control: Implement a role-based system (e.g., using OpenZeppelin AccessControl) to restrict who can read or submit records.

Work Status: Add an enum to track assignment status (e.g., Pending, Approved, Rejected).

Web Interface: Build a simple frontend DApp (Decentralized Application) using Ethers.js or Web3.js for visual interaction.

🙌 Acknowledgments

Solidity Documentation for the language fundamentals.

Remix IDE for an easy development experience.

💡 Pro Tip: Always check the gas cost for your submitAssignment transaction before deploying to a live network!

🧠 Made with ❤️ by Pritam Kapat
https://repo.sourcify.dev/11142220/0x9c7702eCdd3Ad39573B445E0295e03e3106dd036
