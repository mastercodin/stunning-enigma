#!/bin/bash
cat <<'EOF' >> ~/.bashrc
function chat() {
    local response
    response=$(curl -s ch.at/v1/chat/completions --data "{\"messages\":[{\"role\":\"user\",\"content\":\"$1\"}]}" | jq -r '.choices[0].message.content')
    echo "$response"
}
EOF
