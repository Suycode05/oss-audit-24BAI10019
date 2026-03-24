#!/bin/bash

# Script 2: FOSS Package Inspector (Unit 2)
# Author: Suyash Tripathi | Course: Open Source Software

# ===========================
#        Configuration
# ===========================
PACKAGE="python3"

echo "========================================"
echo "     FOSS Package Inspector"
echo "========================================"
echo "Checking package : $PACKAGE"
echo "----------------------------------------"

# ===========================
#   Check if package is installed
# ===========================

if dpkg -l | grep -q "^ii  $PACKAGE " 2>/dev/null; then
    # Debian/Ubuntu based systems
    echo "✅ $PACKAGE is INSTALLED on this system."
    echo ""
    echo "Package Information:"
    dpkg -s $PACKAGE | grep -E 'Package|Version|Maintainer|Description' | sed 's/^/   /'
    
elif rpm -q $PACKAGE &>/dev/null; then
    # RedHat/Fedora based systems
    echo "✅ $PACKAGE is INSTALLED on this system."
    echo ""
    echo "Package Information:"
    rpm -qi $PACKAGE | grep -E 'Name|Version|License|Summary|Description' | sed 's/^/   /'
    
else
    echo "❌ $PACKAGE is NOT installed on this system."
    echo "   You can install it using:"
    echo "   Debian/Ubuntu : sudo apt install $PACKAGE"
    echo "   Fedora/RHEL   : sudo dnf install $PACKAGE"
    echo ""
    exit 0
fi

echo ""
echo "----------------------------------------"

# ===========================
#   Case Statement - Philosophy / Purpose
# ===========================

echo "Why this software matters (Open Source Philosophy):"
case $PACKAGE in
    firefox)
        echo "   Firefox: The champion of user privacy and a truly open web browser."
        ;;
    vlc)
        echo "   VLC: Plays everything — the Swiss Army knife of media players."
        ;;
    apache2|httpd)
        echo "   Apache: The web server that powered the growth of the modern internet."
        ;;
    mysql-server|mysql)
        echo "   MySQL: The world's most popular open source relational database."
        ;;
    gimp)
        echo "   GIMP: Powerful image editor — free alternative to Photoshop."
        ;;
    python3)
        echo "   Python: The most loved programming language in the world."
        ;;
    libreoffice)
        echo "   LibreOffice: Complete office suite — free alternative to Microsoft Office."
        ;;
    *)
        echo "   $PACKAGE: An important Free and Open Source Software (FOSS) package."
        ;;
esac

echo ""
echo "========================================"
echo "FOSS helps us learn, share, and build together ❤️"
echo "========================================"