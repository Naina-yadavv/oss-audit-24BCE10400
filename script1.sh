#!/bin/bash
# Script 1: System Identity Report
# Author: Naina Yadav

# Variables
STUDENT_NAME="Naina Yadav"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Get distro name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

echo "====================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "====================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distro          : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "License         : Linux is mostly GPL licensed"
echo "====================================="
