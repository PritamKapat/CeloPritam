// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title WorkChainRecords
 * @dev A simple smart contract to record job assignments on the blockchain.
 * This is a beginner-friendly example for recording data immutably.
 */
contract WorkChainRecords {

    // --- Data Structures ---

    // A struct to define the structure of a single job assignment record.
    struct AssignmentRecord {
        uint256 id;                 // Unique identifier for the record
        address submitter;          // The address that submitted the assignment
        string description;         // A description or details about the submitted work
        uint256 submissionTimestamp;// The block timestamp when the record was created
    }

    // A mapping to store all assignment records.
    // Key: The unique assignment ID (uint256)
    // Value: The AssignmentRecord struct
    mapping(uint256 => AssignmentRecord) public records;

    // Counter to track the total number of assignments submitted.
    // This also serves as the next unique ID for a new submission.
    uint256 private nextAssignmentId = 1;


    // --- Events ---

    // An event emitted when a new assignment is successfully submitted.
    event AssignmentSubmitted(
        uint256 id,
        address indexed submitter,
        uint256 timestamp
    );


    // --- Functions ---

    /**
     * @notice Submits a new job assignment record to the WorkChain.
     * @param _description The detailed description of the job/task completed.
     */
    function submitAssignment(string memory _description) public {
        // 1. Get the current ID and increment the counter for the next submission.
        uint256 currentId = nextAssignmentId;
        nextAssignmentId++;

        // 2. Create and store the new record in the 'records' mapping.
        records[currentId] = AssignmentRecord({
            id: currentId,
            submitter: msg.sender,
            description: _description,
            submissionTimestamp: block.timestamp
        });

        // 3. Emit an event for easy off-chain monitoring and tracking.
        emit AssignmentSubmitted(currentId, msg.sender, block.timestamp);
    }

    /**
     * @notice Retrieves a specific assignment record by its ID.
     * @param _id The unique ID of the assignment record to retrieve.
     * @return The ID, submitter address, description, and timestamp of the record.
     */
    function getAssignment(uint256 _id)
        public
        view
        returns (
            uint256,
            address,
            string memory,
            uint256
        )
    {
        // Require that the ID must be valid (must be less than the next available ID).
        require(_id > 0 && _id < nextAssignmentId, "WorkChainRecords: Invalid assignment ID.");

        AssignmentRecord storage record = records[_id];

        // Return the individual fields of the struct.
        return (
            record.id,
            record.submitter,
            record.description,
            record.submissionTimestamp
        );
    }

    /**
     * @notice Gets the total number of assignments recorded so far.
     * @return The ID that will be used for the next submitted assignment.
     */
    function getTotalAssignments() public view returns (uint256) {
        // Since IDs start at 1, the current ID counter is 1 greater than the number of records.
        return nextAssignmentId - 1;
    }
}
