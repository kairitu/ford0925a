#!/bin/bash

clear

# Description: This script looks at memory and dices it, please wait 

# Author Jane Waweru

# Date : September 18th 2020

echo "This script looks at memory and dices it, The entire free memory is: "
echo ""
sleep 2
echo "Total System Memory is .. $(free | grep Mem |awk '{print $2}')"
echo ""
sleep 2
echo "Total Swap Memory is .. $(free | grep Swap |awk '{print $2}')"
echo ""
sleep 2
echo "Total Used Memory is .. $(free | grep Mem |awk '{print $3}')"
echo ""
sleep 2
echo "Total Swap Used Memory is .. $(free | grep Swap |awk '{print $3}')"
echo ""
sleep 2
echo "Total Free Memory is : .. $(free | grep Mem |awk '{print $4}')"
echo ""
sleep 2
sleep 2
echo "Total Shared Memory Is : ..$(free | grep Mem |awk '{print $5}')"
echo ""
sleep 2
echo "Total Buff / Cache Memory is : ..$(free | grep Mem |awk '{print $6}')"
echo ""
sleep 2
echo "Total Available Memory is .. $(free | grep Mem |awk '{print $7}')"
echo ""
sleep 2




