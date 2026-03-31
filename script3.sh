#!/bin/bash
# ==========================================================
# Script 3: Disk and Permission Auditor
# Author: Naina Yadav
# Course: Open Source Software
# Description: Checks disk usage, permissions, and ownership
# ==========================================================

# -------- Important Directories --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "        Directory Audit Report"
echo "=============================================="

# -------- Loop through directories --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get directory size (ignore permission errors)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "   Permissions & Owner : $PERMS"
        echo "   Disk Usage          : $SIZE"
        echo "----------------------------------------------"
    else
        echo "$DIR does not exist on this system"
    fi
done

# -------- Check config directory for chosen software --------
echo ""
echo "Checking configuration directory for Git..."

CONFIG_DIR="/etc/git"

if [ -d "$CONFIG_DIR" ]; then
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Git Config Directory Found: $CONFIG_DIR"
    echo "Permissions & Owner       : $CONFIG_PERMS"
else
    echo "Git config directory not found at $CONFIG_DIR"
fi

echo "=============================================="
