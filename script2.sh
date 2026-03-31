#!/bin/bash
# ==========================================================
# Script 2: FOSS Package Inspector
# Author: Naina Yadav
# Course: Open Source Software
# Description: Checks if a package is installed and displays info
# ==========================================================

# -------- Input Package --------
PACKAGE="git"   # Change if needed (git, firefox, vlc, etc.)

# -------- Check Installation --------
# Using dpkg (for Ubuntu/WSL)
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "----------------------------------------"
    echo "$PACKAGE is INSTALLED on this system."
    echo "----------------------------------------"
    
    # Show version, architecture, and description
    dpkg -s "$PACKAGE" | grep -E 'Version|Architecture|Description'
else
    echo "----------------------------------------"
    echo "$PACKAGE is NOT installed."
    echo "----------------------------------------"
fi

# -------- Case Statement (Philosophy Notes) --------
echo ""
echo "Philosophy Note:"
case $PACKAGE in
    git)
        echo "Git: A distributed version control system built to support open and collaborative development."
        ;;
    firefox)
        echo "Firefox: A browser developed to promote privacy, transparency, and an open web."
        ;;
    vlc)
        echo "VLC: A free and open media player that supports almost all formats without restrictions."
        ;;
    mysql)
        echo "MySQL: A powerful open-source database used in millions of applications worldwide."
        ;;
    *)
        echo "This package represents the power of open-source software and community collaboration."
        ;;
esac

echo "----------------------------------------"
