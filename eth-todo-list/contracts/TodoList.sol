pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    uint256 public TaskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }
    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("Check out Block Shop");
    }

    function createTask(string memory _content) public {
        TaskCount++;
        tasks[TaskCount] = Task(TaskCount, _content, false);
    }
}
