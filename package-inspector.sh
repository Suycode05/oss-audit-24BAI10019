#!/bin/bash

# Script 2: FOSS Package Inspector (Unit 2)
# Author: Suyash Tripathi | Course: Open Source Software
# Chosen Software: Python

PACKAGE="python3"

echo "========================================"
echo "     FOSS Package Inspector"
echo "========================================"
echo "Checking package : $PACKAGE"
echo "----------------------------------------"

# Universal way to check if Python is installed (works on any Linux)
if command -v python3 >/dev/null 2>&1; then
    echo "✅ $PACKAGE is INSTALLED on this system."
    echo ""
    echo "Package Information:"
    echo "   Version : $(python3 --version)"
    echo "   Location: $(command -v python3)"
    
    # Try to show more info if pip is available
    if command -v pip3 >/dev/null 2>&1; then
        echo "   pip     : $(pip3 --version 2>/dev/null | head -n 1)"
    fi
else
    echo "❌ $PACKAGE is NOT installed on this system."
    echo ""
    echo "   You can install it using:"
    echo "   • Fedora / RedHat / CentOS : sudo dnf install python3"
    echo "   • Ubuntu / Debian          : sudo apt install python3"
    echo "   • Arch / Manjaro           : sudo pacman -S python"
    echo ""
    echo "After installing, run this script again."
fi

echo ""
echo "----------------------------------------"

# Open Source Philosophy for Python
echo "Why Python matters in Open Source:"
echo "   Python: The most loved programming language in the world."
echo "           Simple, powerful, and completely open source."
echo "           Powers AI, data science, web development, automation,"
echo "           and scientific computing worldwide."
echo ""
echo "   Python embodies the true spirit of Free and Open Source Software —"
echo "   anyone can read, modify, improve, and share it freely."

echo ""
echo "========================================"
echo "FOSS helps us learn, share, and build together ❤️"
echo "========================================"