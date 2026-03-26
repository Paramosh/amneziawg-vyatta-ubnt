#!/bin/bash
# Validate fwmark value for AmneziaWG interface

MARK="$1"

# Check if mark is empty
if [ -z "$MARK" ]; then
    echo "Error: fwmark cannot be empty"
    exit 1
fi

# Check for invalid characters (allow hex digits and optional /mask)
if ! echo "$MARK" | grep -qE '^[0-9a-fA-Fx]+(/[0-9a-fA-Fx]+)?$'; then
    echo "Error: Invalid fwmark format. Use hex value or value/mask"
    exit 1
fi

exit 0
