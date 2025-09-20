#!/bin/bash

#date time, current directory, running process, disk usage, exit

while true; do
	echo "======================================"
	echo "     Simple system menu"
	echo "======================================"
	echo "1) show date & time"
	echo "2) show current directory"
	echo "3) show running processes"
	echo "4) show disk usage"
	echo "5) exit"

	read -p "enter the menu option [1-5] " choice
	echo ""
	case $choice in
		1) echo "date & time: $(date)";;
		2) echo "current directory: $(pwd)";;
		3) ps -e | head -15;;
		4) df -h;;
		5) echo "bye bye!"; exit;;
		*) echo "wrong option try again";;
	esac
	echo "" # new line for spacing
done
