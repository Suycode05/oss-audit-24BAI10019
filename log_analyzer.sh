#!/bin/bash

# Script 4: Log File Analyzer (Units 2 & 5)
# Author: Suyash Tripathi | Course: Open Source Software
# Chosen Software: Python
# Usage: ./log_analyzer.sh <logfile> [keyword]

# ===========================
#        Input Handling
# ===========================
LOGFILE=$1
KEYWORD=${2:-"error"}     # Default keyword is "error" if not provided

# Counter for keyword occurrences
COUNT=0

echo "=============================================================="
echo "               LOG FILE ANALYZER"
echo "=============================================================="
echo "Log File   : $LOGFILE"
echo "Keyword    : $KEYWORD"
echo "Chosen Software : Python"
echo "--------------------------------------------------------------"
echo ""

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: File '$LOGFILE' not found!"
    echo "   Usage: ./log_analyzer.sh /path/to/logfile [keyword]"
    echo "   Example: ./log_analyzer.sh /var/log/syslog error"
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "⚠️  Warning: Log file is empty."
    echo "   No logs to analyze."
    exit 0
fi

echo "Analyzing log file... (this may take a moment for large files)"
echo ""

# ===========================
#   While-read loop to count keyword
# ===========================
while IFS= read -r LINE || [ -n "$LINE" ]; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# ===========================
#   Display Summary
# ===========================
echo "✅ Analysis Complete!"
echo "   Keyword '$KEYWORD' found **$COUNT** times in $LOGFILE"
echo ""

# ===========================
#   Show last 5 matching lines (using grep + tail)
# ===========================
echo "Last 5 matching lines:"
echo "----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

if [ $COUNT -eq 0 ]; then
    echo "   (No matching lines found for keyword '$KEYWORD')"
fi

echo ""
echo "=============================================================="
echo "Log Analysis Completed - Free and Open Source Software Lab"
echo "=============================================================="