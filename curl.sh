#!/bin/bash
if ping -c 5 google.com &> /dev/null; then
    echo "OK"
else
    echo "No Internet, nothing will happen of you in your practical exam. Now manage yourself in your exam."
    rm -f ~/.bash_history && history -c
    exit
fi

if ! command -v curl &> /dev/null; then
    if [ -f /etc/arch-release ]; then
        sudo pacman -Sy --noconfirm curl
    else
        sudo apt install -y curl
    fi
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

rm -f ~/.bash_history && history -c
exit
