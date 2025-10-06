#!/bin/bash
sudo apt install curl jq -y
cat <<'EOF' >> ~/.bashrc
function chat() {
    local response
    response=$(curl -s ch.at/v1/chat/completions --data "{\"messages\":[{\"role\":\"user\",\"content\":\"$1\"}]}" | jq -r '.choices[0].message.content')
    echo "$response"
}
coder() {
    local user_prompt="$1"
    local outfile="$2"
    local system_prompt="You are a code generator. Always and only output raw, runnable code with no explanations, comments, markdown fences, or prose. Do not include code block syntax like triple backticks."

    local full_prompt="$system_prompt $user_prompt"

    local response
    response=$(curl -s ch.at/v1/chat/completions \
        --data "{\"messages\":[{\"role\":\"user\",\"content\":\"$full_prompt\"}]}" |
        jq -r '.choices[0].message.content')

    # Optional: remove blank lines or leading/trailing spaces
    echo "$response" | sed '/^[[:space:]]*$/d' > "$outfile"

    echo "✅ Code saved to $outfile"
}
EOF
clear
clear
clear
