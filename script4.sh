#!/bin/bash
# Script 4: Log File Analyzer
# Purpose: Count keyword occurrences in log file

LOGFILE=$1                      # First argument = log file
KEYWORD=${2:-"error"}           # Default keyword = error
COUNT=0                         # Counter

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter
    fi
done < "$LOGFILE"

# --- Output result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Show last 5 matching lines ---
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
