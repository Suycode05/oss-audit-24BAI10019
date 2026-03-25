#!/bin/bash

# Script 4: Log File Analyzer (Units 2 & 5)
# Author: Suyash Tripathi | Course: Open Source Software
# Chosen Software: Python

# ===========================
#        Input Handling
# ===========================
LOGFILE=$1
KEYWORD=${2:-"error"}     # Default keyword is "error"

COUNT=0

echo "=============================================================="
echo "               LOG FILE ANALYZER"
echo "=============================================================="
echo "Chosen Software : Python"
echo "--------------------------------------------------------------"

# If no logfile provided, try common ones or create a demo
if [ -z "$LOGFILE" ]; then
    echo "No log file provided. Trying common log files..."
    for possible in /var/log/syslog /var/log/messages /var/log/kern.log ~/.bash_history; do
        if [ -f "$possible" ]; then
            LOGFILE="$possible"
            echo "Using found log file: $LOGFILE"
            break
        fi
    done
    
    # If still no file, create a small demo log for testing
    if [ -z "$LOGFILE" ]; then
        LOGFILE="demo_log.txt"
        echo "Creating a demo log file for testing..."
        cat > "$LOGFILE" << EOF
This is a normal log line.
ERROR: Failed to connect to database.
Warning: Low disk space detected.
Python script started successfully.
ERROR: Permission denied on file.
INFO: Python version 3.12.3
CRITICAL: System crash detected in Python module.
EOF
        echo "Demo log file created: $LOGFILE"
    fi
fi

echo "Log File   : $LOGFILE"
echo "Keyword    : $KEYWORD"
echo ""

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: File '$LOGFILE' not found!"
    echo "   Usage: ./log_analyzer.sh /path/to/logfile [keyword]"
    echo "   Example: ./log_analyzer.sh demo_log.txt error"
    exit 1
fi

# Count occurrences using while-read loop
while IFS= read -r LINE || [ -n "$LINE" ]; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "✅ Analysis Complete!"
echo "   Keyword '$KEYWORD' found **$COUNT** times in $LOGFILE"
echo ""

# Show last 5 matching lines
echo "Last 5 matching lines:"
echo "----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

if [ $COUNT -eq 0 ]; then
    echo "   (No lines matched the keyword '$KEYWORD')"
fi

echo ""
echo "=============================================================="
echo "Log Analysis Completed - Free and Open Source Software Lab"
echo "=============================================================="