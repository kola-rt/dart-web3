pragma solidity ^0.8.13;

contract TodoList {
    uint256 public taskCount;

    struct Task {
        string taskName;
        bool isCompleted;
    }

    mapping(uint256 => Task) public todos;

    event TaskCreated(string task, uint256 taskNumber);

    constructor() public {
        taskCount = 0;
    }

    function createTask(string memory _taskName) public {
        todos[taskCount++] = Task(_taskName, false);

        emit TaskCreated(_taskName, taskCount - 1);
    }
}