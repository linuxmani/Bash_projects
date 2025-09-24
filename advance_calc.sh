#!/bin/bash

while true; do
	echo "============================================="
	echo "		advance calculator "
	echo "============================================="
	echo "1) addition"
	echo "2) subtraction"
	echo "3) multiplication"
	echo "4) division"
	echo "5) power (a^b)"
	echo "6) square root"
	echo "7) exit"
	echo "============================================="
	read -p "choose an option [1-7]" choice

	case $choice in
		1) read -p "enter first number: " a
		   read -p "enter second number: " b
		   echo "result: $(echo "$a + $b" | bc -l)";;
		2) read -p "enter first number: " a
                   read -p "enter second number: " b
                   echo "result: $(echo "$a - $b" | bc -l)";;
		3) read -p "enter first number: " a
                   read -p "enter second number: " b
                   echo "result: $(echo "$a *  $b" | bc -l)";;
		4) read -p "enter first number: " a
                   read -p "enter second number: " b
		   if [ "$(echo "$b == 0" | bc -l)" -eq 1 ]; then
		   	echo "error: division by zero not allowed!"
		   else
		   	echo "result: $(echo "scale=4; $a / $b" | bc -l)"
		   fi;;
		5) read -p "enter first number: " a
                   read -p "enter second number: " b
                   echo "result: $(echo "$a ^ $b" | bc -l)";;
		6) read -p "enter first number: " a
		   if [ "$(echo "$a < 0" | bc -l)" -eq 1 ]; then
		   	echo "error: cannot calculate sqrt of a neg number"
		   else
		   	echo "result: $(echo "scale=4; sqrt($a)" | bc -l)"
		   fi;;
		7) echo "bye bye!"; exit;;
	esac
	echo ""
done
