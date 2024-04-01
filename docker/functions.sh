#!/bin/bash

# Function to teleop the bot (manually control/drive the bot around using keyboard inputs)
function teleop {
  ros2 run teleop_twist_keyboard teleop_twist_keyboard
}

# Function that uses an action client to send a request to make the bot navigate to the home position (0, 0)
function go_back_home {
  ros2 action send_goal /navigate_to_pose nav2_msgs/action/NavigateToPose "{pose: {header: {frame_id: "map"}, pose: {position: {x: 0.0, y: 0.0, z: 0.0}, orientation: {x: 0.0, y: 0.0, z: 0.0, w: 1.0}}}}"
}

