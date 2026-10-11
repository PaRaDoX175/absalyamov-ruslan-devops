#!/bin/bash

PRACTICE_DIR="$(dirname "$0")/../Absalyamov_Ruslan_info.txt"

echo "================="
echo "Student Information"
echo "================="
echo
echo "Name: Ruslan"
echo "Surname: Absalyamov"
echo "Group: IT2-2313"
echo "Student ID: 37044"
echo
echo "================="
echo "System information"
echo "================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current date: $(date)"
echo "Operating system: $(uname -s -r)"
echo "Disk usage:"
df -h /
echo "Memory usage:"
free -h 
echo

if [ -f "$PRACTICE_DIR" ]; then
	echo "Student information file exists."
else 
	echo "Student information file does not exist."
fi

echo "Script end"
