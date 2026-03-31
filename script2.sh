#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: version control system built for open collaboration" ;;
    firefox) echo "Firefox: open-source browser for a free web" ;;
    vlc) echo "VLC: media player that supports everything" ;;
    python) echo "Python: community-driven programming language" ;;
    *) echo "Unknown package" ;;
esac
