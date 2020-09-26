#!/bin/bash
clear
# Description: This Script filters out contents of an ip address
# Author: Jane Waweru
# Date : September 18th 2020

echo "Filter just the enp0s3 of the ifconfig"
sleep 2
echo ""
ifconfig enp0s3
echo ""
sleep 2
echo "Please wait for the inet output .."
sleep 2
echo ""
ifconfig enp0s3 |grep inet
echo ""
sleep 2
echo "The top line of the inet output is ... $(ifconfig enp0s3 | grep inet| head -1)"
echo ""
sleep 2
echo "The System IP address is .. $(ifconfig enp0s3 | grep inet |head -1 | awk '{print$2}')"
echo ""

