#include "Question2.hpp"

mutex tools[numberOfRobots]; // creating 5 mutexes for the 5 tools

void robotTask(int id) {
    int leftTool = id; // the left tool is identified to be the "robot's" tool: robot 1's left tool is tool 1
    int rightTool = (id + 1) % numberOfRobots; // the right tool is identified to be the adjacent robot's tool, the right tool of robot 1 is tool 2. Modulus ensure that robot 5's right tool is just robot 1's left tool (tool 1)
    // robot is grabbing the left tool
    tools[leftTool].lock(); // locking the left tool
    tools[rightTool].lock(); // locking the right tool
    cout << "Robot " << id << " is reaching and grabbing the tools." << endl;
    this_thread::sleep_for(chrono::seconds(1)); // time it takes the robot to pickup both tools
    // robot has both tools, now it starts to complete its task
    cout << "Robot " << id << " acquired tools and starts performing a task." << endl;
    this_thread::sleep_for(chrono::seconds(5));  // time it takes the robot to complete its task
    // dropping the tools after the robot completed its task:
    tools[leftTool].unlock(); // unlocking the left tool
    tools[rightTool].unlock(); // unlocking the right tool
    cout << "Robot " << id << " finished the task and is returning the tools." << endl;
}

void question2() {
     vector<thread> robots;  // container to store all the ongoing robot threads

    for (int i = 0; i < numberOfRobots; ++i) {
        robots.push_back(thread(robotTask, i));  // initiating the robot task in a new thread
    }

    for (auto& robot : robots) { // for loop to wait for all robot threads to complete their tasks
        robot.join();  // joining each robot thread, the main "thread" waits for all robots to be done their tasks
    }
}
