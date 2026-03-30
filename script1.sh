#!/bin/bash
# Script 1: System Identity Report
# Author: Mehul Khare
# Purpose: Display basic system details along with VLC info

# --- User Details ---
STUDENT_NAME="Mehul Khare"
SOFTWARE_CHOICE="VLC Media Player"

# --- System Information Commands ---
KERNEL=$(uname -r)              # Get kernel version
USER_NAME=$(whoami)             # Get current user
UPTIME=$(uptime -p)             # Get system uptime
DATE=$(date)                    # Current date & time
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')  # Linux distro name

# --- Output Section ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "License : GPL / LGPL (VLC Media Player)"   # VLC license info
