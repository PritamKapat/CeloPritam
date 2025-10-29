WorkChain Records

💡 Project Description

WorkChain Records is a simple, beginner-friendly smart contract designed to demonstrate the immutability and transparency of blockchain technology by recording submitted job assignments on-chain. It serves as a decentralized, tamper-proof ledger for tracking work completion and maintaining a permanent record of contributions.

🎯 What It Does

This contract acts as a central registry for work assignments. Any address can submit a record containing a description of a completed job. The contract assigns a unique, sequential ID to each submission and stores the sender's address and the exact time of submission.

By storing records on the blockchain, we ensure that once a work assignment is logged, it cannot be altered or removed, providing a verifiable history of labor.

✨ Features

The WorkChainRecords contract exposes the following public functions and variables:

Function / Variable

Type

Description

submitAssignment(string memory _description)

External (Write)

Mints a new assignment record with the provided description, assigning it the next available unique ID.

getAssignment(uint256 _id)

Public (View)

Retrieves the full details of a specific assignment record (ID, submitter, description, timestamp).

getTotalAssignments()

Public (View)

Returns the total count of assignment records submitted to the contract.

records(uint256)

Public (View)

Automatically generated getter function to view the raw AssignmentRecord data for a given ID.

AssignmentSubmitted

Event

Emitted upon successful submission of a new record for easy off-chain indexing.

🔗 Deployed Smart Contract Link

The deployed address for the WorkChainRecords contract can be found here:

https://repo.sourcify.dev/11142220/0x9c7702eCdd3Ad39573B445E0295e03e3106dd036
