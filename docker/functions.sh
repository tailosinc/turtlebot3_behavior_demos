#!/bin/bash

# Function to teleop the bot (manually control/drive the bot around using keyboard inputs)
function teleop {
  ros2 run teleop_twist_keyboard teleop_twist_keyboard
}

# Function that uses an action client to send a request to make the bot navigate to the home position (0, 0)
function go_back_home {
  ros2 action send_goal /navigate_to_pose nav2_msgs/action/NavigateToPose "{pose: {header: {frame_id: "map"}, pose: {position: {x: 0.0, y: 0.0, z: 0.0}, orientation: {x: 0.0, y: 0.0, z: 0.0, w: 1.0}}}}"
}

# Function to call demo script with red, green, or blue parameter.
function navigate_until_color_is_found
{
  local color_arg=$1
  if [ $# -eq 0 ]; then
    color_arg=blue
  fi
  ros2 launch tb3_autonomy tb3_demo_behavior_py.launch.py target_color:="${color_arg}" location_file:=$HOME/my_waypoints.yaml
}

