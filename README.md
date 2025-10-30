# WorkChain Records ⛓️
A simple Smart Contract for On-Chain Job Assignment Tracking.

<img width="1187" height="642" alt="image" src="https://github.com/user-attachments/assets/571c34e6-2a2d-42d0-adca-f5b63acdb65b" />


## 📜 Project Description

WorkChain Records is a foundational Solidity smart contract designed for beginners to understand how to store structured data immutably on the blockchain. It implements a decentralized, tamper-proof ledger for tracking completed job assignments and maintaining a permanent, verifiable history of contributions.

This project is an excellent starting point for learning about structs, mappings, and basic write/read functions in Solidity.

## ⚙️ What It Does

The contract functions as a simple database where users can permanently log details of a completed job or task:

Submission: Any address can call the submitAssignment function with a text description of the work.

Indexing: The contract automatically assigns a unique, sequential ID to the submission.

Immutability: Once logged, the record (including the submitter's address and timestamp) cannot be changed, providing a clear audit trail.

## 🌟 Features

The WorkChainRecords contract provides the following core functionalities:

🧠 Beginner-Friendly: Easy-to-read Solidity structure using basic building blocks (structs, mappings, events).

🔒 Immutable Records: Once a record is submitted, it cannot be altered or removed from the chain.

⛓️ On-Chain Transparency: All assignment records are publicly verifiable by anyone.

⏱️ Timestamped Proof: Every submission is recorded with the block timestamp for accurate proof of work.

## 📄Smart Contract Details

Language: Solidity ^0.8.0

Framework: Remix / Hardhat compatible

Network: Ethereum Testnets (e.g., Sepolia, Goerli)

## 🔗 Deployed Smart Contract Link

You can view the contract & transaction address on any supported block explorer at this address:

👉 [View on Blockscout](https://celo-sepolia.blockscout.com/tx/0xca954b0474426311c868b6a8fbb9a5447c395242ec9864113e47585d774a547b)
👉 [Contract Address](https://repo.sourcify.dev/11142220/0x9c7702eCdd3Ad39573B445E0295e03e3106dd036)

## 🧩 Future Enhancements

Access Control: Implement a role-based system (e.g., using OpenZeppelin AccessControl) to restrict who can read or submit records.

Work Status: Add an enum to track assignment status (e.g., Pending, Approved, Rejected).

Web Interface: Build a simple frontend DApp (Decentralized Application) using Ethers.js or Web3.js for visual interaction.

## 🙌 Acknowledgments

* [Celo Blockchain](https://celo.org/) for providing eco-friendly infrastructure
* [Remix IDE](https://remix.ethereum.org/) for easy smart contract testing
* [Blockscout](https://blockscout.com/) for transparent transaction viewing

💡 Pro Tip: Always check the gas cost for your submitAssignment transaction before deploying to a live network!

## 🧠 Made with ❤️ by Pritam Kapat
```

---
