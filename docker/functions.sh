#!/bin/bash

# Function to teleop the bot (manually control/drive the bot around using keyboard inputs)
function teleop {
    ros2 run teleop_twist_keyboard teleop_twist_keyboard
}

