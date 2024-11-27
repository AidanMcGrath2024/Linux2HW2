#ifndef Question2_H
#define Question2_H

#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <vector>
#include <chrono>
using namespace std;

const int numberOfRobots = 5; // amount of robots and tools, situated in a circle

extern mutex tools[numberOfRobots]; // Declare tools as extern

// function simulating the robot's task
void robotTask(int id);

void question2();
#endif // Question2