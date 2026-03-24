#!/bin/bash

# Script 3: Disk and Permission Auditor (Unit 2)
# Author: Suyash Tripathi | Course: Open Source Software

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/var/www" "/opt")

# Our chosen software's configuration directory

SOFTWARE_CONFIG_DIR="/usr/lib/python3"

echo "=============================================================="
echo "          DISK AND PERMISSION AUDITOR"
echo "=============================================================="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "Chosen Software  : Python"
echo "--------------------------------------------------------------"
echo ""

echo "Directory Audit Report"
echo "----------------------"

# For loop to check each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1 "  " $3 "  " $4}')
        
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR"
        echo "   ├── Size          : $SIZE"
        echo "   └── Permissions   : $PERMS"
        echo ""
    else
        echo "$DIR → Does not exist on this system"
        echo ""
    fi
done

# ===========================
#   Software Config Directory Check
# ===========================

echo "Software Configuration Directory Check"
echo "-------------------------------------"

if [ -d "$SOFTWARE_CONFIG_DIR" ]; then
    SOFT_PERMS=$(ls -ld "$SOFTWARE_CONFIG_DIR" | awk '{print $1 "  " $3 "  " $4}')
    SOFT_SIZE=$(du -sh "$SOFTWARE_CONFIG_DIR" 2>/dev/null | cut -f1)
    
    echo "✅ Your software config directory exists!"
    echo "   Path     : $SOFTWARE_CONFIG_DIR"
    echo "   Size     : $SOFT_SIZE"
    echo "   Permissions : $SOFT_PERMS"
else
    echo "❌ Config directory not found: $SOFTWARE_CONFIG_DIR"
    echo "   (This is normal if the software has not been used yet)"
fi

echo ""
echo "=============================================================="
echo "Audit Completed - Free and Open Source Software Lab"
echo "=============================================================="