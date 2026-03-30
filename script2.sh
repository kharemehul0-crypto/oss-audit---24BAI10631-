#!/bin/bash
# Script 2: FOSS Package Inspector
# Purpose: Check if VLC is installed and show details

PACKAGE="vlc"   # Package name

# --- Check if package is installed ---
# dpkg -l lists installed packages, grep checks for vlc
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    
    # Show version and description
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case Statement for description ---
case $PACKAGE in
    vlc) echo "VLC: open-source media player that plays almost any format" ;;
    firefox) echo "Firefox: privacy-focused browser" ;;
    mysql) echo "MySQL: database system" ;;
    apache2) echo "Apache: web server powering internet" ;;
    *) echo "Unknown package" ;;
esac
