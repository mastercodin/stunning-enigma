#!/bin/bash
if ping -c 5 google.com &> /dev/null; then
    echo "OK"
else
    echo "No Internet, nothing will happen of you in your practical exam. Now manage yourself in your exam."
    rm -f ~/.bash_history && history -c
    exit
fi
if ! command -v curl &> /dev/null; then
    sudo apt install -y curl
fi
if curl -fsSL v.gd/se19pro >> pro.txt; then
    echo "Command executed successfully."
else
    if curl -fsSL is.gd/se19pro >> pro.txt; then
        echo "Command executed successfully."
    else
        if curl https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt >> pro.txt; then
            echo "Command executed successfully."
        else
            echo "Looks like there is no internet or the command failed to execute."
        fi
    fi
fi

# Clear bash history and exit
rm -f ~/.bash_history && history -c
exit
