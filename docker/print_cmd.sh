#!/bin/bash

# Function to print the command with formatting
print_command() {
    local command="$@"
    printf "===========================\n"
    printf "Command to Run:\n\n"
    printf "$command\n\n"
    printf "===========================\n"
}

# Main script
if [ $# -eq 0 ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

# Read the command from the command line arguments
user_command="$@"

# Call the function to print the command
print_command "$user_command"

echo "You can now copy and paste the command above into your terminal to run it."
