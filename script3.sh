#!/bin/bash
# Script 3: Disk and Permission Auditor
# Purpose: Check directory size, permissions, and VLC config

# List of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# --- VLC Config Directory Check ---
CONFIG="$HOME/.config/vlc"

if [ -d "$CONFIG" ]; then
    echo "VLC Config Found:"
    ls -ld $CONFIG   # Show permissions
else
    echo "VLC config directory not found"
fi
