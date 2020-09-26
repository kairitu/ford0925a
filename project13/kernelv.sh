#!/bin/bash
 clear
# Description: this script displays the 1st digit of the kernel version
# Author: Jane Waweru
# Date : September 18 2020
echo ""

kv=$(uname -r | awk -F. '{print $1}')
echo "The first Digit of the Kernel Version is : .. $kv"
echo ""


if [ $kv -lt 3 ]

then 

echo "your server is not up to date"

echo ""

else

echo "your server is up to date"

echo ""

fi

sleep 2

# Description : The entire Kernel Version is 
echo "The entire Kernel version is : .. $(uname -r)"
echo ""
echo ""
sleep 5


