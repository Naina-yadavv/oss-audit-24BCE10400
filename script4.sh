#!/bin/bash
# ==========================================================
# Script 4: Log File Analyzer
# Author: Naina Yadav
# Course: Open Source Software
# Description: Counts occurrences of a keyword in a log file
# ==========================================================

# -------- Input Arguments --------
LOGFILE=$1                              # First argument: log file path
KEYWORD=${2:-"error"}                   # Second argument: keyword (default = error)
COUNT=0                                 # Counter variable

# -------- Check if file exists --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- Check if file is empty (retry style) --------
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Please provide a valid log file."
    exit 1
fi

# -------- Read file line by line --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# -------- Display result --------
echo "----------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------------"

# -------- Show last 5 matching lines --------
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=============================================="
