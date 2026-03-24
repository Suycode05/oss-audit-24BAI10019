#!/bin/bash

# Script 1: Linux System Welcome Screen
# Author: Suyash Tripathi | Course: Open Source Software

# ===========================
#        Variables
# ===========================
STUDENT_NAME="Suyash Tripathi"
SOFTWARE_CHOICE="Linux System Welcome Script"

# ===========================
#        System Information
# ===========================

# Distribution name (pretty format)
DISTRO=$(cat /etc/os-release | grep -E '^PRETTY_NAME=' | cut -d'"' -f2)

# Kernel version
KERNEL=$(uname -r)

# Current logged-in user
USER_NAME=$(whoami)

# User's home directory
HOME_DIR=$HOME

# System uptime (pretty format)
UPTIME=$(uptime -p)

# Current date and time
CURRENT_TIME=$(date '+%A, %B %d, %Y at %I:%M %p')

# Open-source license message
LICENSE="This operating system is covered under the GNU General Public License (GPL) v2 or later."

# ===========================
#        Welcome Screen
# ===========================

clear

echo "===================================================================="
echo "               🐧  WELCOME TO OUR LINUX SYSTEM  🐧"
echo "===================================================================="
echo ""
echo "   Distribution : $DISTRO"
echo "   Kernel       : $KERNEL"
echo "   Logged in as : $USER_NAME"
echo "   Home Directory : $HOME_DIR"
echo "   Uptime       : $UPTIME"
echo "   Date & Time  : $CURRENT_TIME"
echo ""
echo "===================================================================="
echo "   $LICENSE"
echo "===================================================================="
echo ""
echo "   Thank you for using Open Source Software!"
echo "   Made by $STUDENT_NAME"
echo ""
