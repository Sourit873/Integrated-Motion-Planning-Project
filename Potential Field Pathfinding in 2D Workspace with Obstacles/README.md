## Potential Field Pathfinding in 2D Workspace with Obstacles

This directory contains the code and files for implementing the Potential Field method to find a path from a start point to a goal point in a 2D workspace with obstacles.

In this project, we utilize the concept of potential fields to guide a robot through the workspace while avoiding obstacles. The workspace is represented as a rectangular region with three or more obstacles or a room with walls and passage ways.

The program defines attractive and repulsive potential field functions. The attractive field pulls the robot towards the goal point, while the repulsive field pushes the robot away from obstacles. By adjusting the constants in these fields, different feasible paths can be generated.

By running the code in this directory, you will be able to visualize the workspace with obstacles, mark the start and goal points, and observe the final paths generated using the Potential Field method. The program provides several figures that showcase the workspace with obstacles and the resulting paths from the initial point to the goal point.

Feel free to explore the code and associated files to understand the Potential Field pathfinding process and experiment with different values of the constants in the attractive and repulsive fields.

### Note

The codes are wtitten in MATLAB. Save all the **`.m`** files in one directory and run the **`main.m`** file to get the output.
