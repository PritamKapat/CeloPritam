<img width="1361" height="645" alt="image" src="https://github.com/user-attachments/assets/c0ae658c-3978-43c8-bf9e-f80eedc5db9f" />



WorkChain Records ⛓️

A Simple Smart Contract for On-Chain Job Assignment Tracking.

💡 Project Description

WorkChain Records is a foundational Solidity smart contract designed for beginners to understand how to store structured data immutably on the blockchain. It implements a decentralized, tamper-proof ledger for tracking completed job assignments and maintaining a permanent, verifiable history of contributions.

This project is an excellent starting point for learning about structs, mappings, and basic write/read functions in Solidity.

🎯 What It Does

The contract functions as a simple database where users can permanently log details of a completed job or task.

Submission: Any address can call the submitAssignment function with a text description of the work.

Indexing: The contract automatically assigns a unique, sequential ID to the submission.

Immutability: Once logged, the record (including the submitter's address and timestamp) cannot be changed, providing a clear audit trail.

✨ Features

The WorkChainRecords contract provides the following core functions for interacting with the assignment registry:

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

📜 Smart Contract Code

Below is the complete source code for the WorkChainRecords.sol contract:

// SPDX-License-Identifier: MIT


🔗 Deployed Smart Contract Link

You can view the contract on any supported block explorer at this address:
(https://repo.sourcify.dev/11142220/0x9c7702eCdd3Ad39573B445E0295e03e3106dd036)
