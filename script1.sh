#!/bin/bash
# ==========================================================
# Script 1: System Identity Report
# Author: Naina Yadav
# Course: Open Source Software
# Description: Displays system identity information
# ==========================================================

# -------- Variables --------
STUDENT_NAME="Naina Yadav"
SOFTWARE_CHOICE="Git"

# -------- System Information --------
KERNEL=$(uname -r)                         # Kernel version
USER_NAME=$(whoami)                        # Current user
HOME_DIR=$HOME                             # Home directory
UPTIME=$(uptime -p)                        # System uptime
DATE=$(date)                               # Current date and time
DISTRO=$(lsb_release -d | cut -f2)         # Linux distribution name

# -------- Display Output --------
echo "=============================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "=============================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "Distribution   : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "User           : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "Uptime         : $UPTIME"
echo "Date & Time    : $DATE"
echo "----------------------------------------------"

# -------- License Information --------
echo "License Info   :"
echo "This Linux system is based on GNU/Linux,"
echo "which is distributed under the GNU General Public License (GPL)."

echo "=============================================="
