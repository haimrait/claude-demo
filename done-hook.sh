#!/bin/bash

# Check if we've already spoken
if [ -f /tmp/already_spoke ]; then
    rm /tmp/already_spoke
    exit 0
fi

# Create the token file to indicate we're about to speak
touch /tmp/already_spoke

# Create a prompt for Claude to describe what happened and speak it
cat >&2 << 'EOF'
There's one issue with your work - you haven't alerted the user that you've completed the task. Briefly describe what you just did in less than 8 words, then use the say command to speak 'done with [your description]'. Just run the say command directly, don't create any files or scripts.
EOF

exit 2