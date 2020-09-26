#!/bin/bash

clear

# Description : This script Analyzes the the cpu

# Author: Jane Waweru

# Date : September 18th 2020

echo ""
echo "The System IP address is .. $(ifconfig enp0s3 | grep inet |head -1 | awk '{print$2}')"
echo ""
sleep 2
echo "The Server Hostname is $(hostname)"
echo""
sleep 2
echo "The Server Architectire is .. $(lscpu | grep Architecture | awk -F: '{print $2}')"
echo ""
sleep 2
echo "The CPU op Mode is .. $(lscpu | grep 'CPU op-mode(s)' | awk -F: '{print $2}')"
sleep 2
echo ""
echo "Number of CPUs are .. $(lscpu | grep 'CPU(s)'|head -1 | awk -F: '{print $2}')"
echo ""
sleep 2
echo "The Server Model Name is ... $(lscpu | grep 'Model name' | awk -F: '{print $2}')"
echo ""
sleep 2
echo "The CPU Speed is .. $(lscpu | grep 'CPU MHz' | awk -F: '{print $2}')"
echo ""
sleep 2
echo "The Hypervisor vendor is .. $(lscpu | grep Hypervisor | awk -F: '{print $2}')"
echo ""
sleep 2
echo " The Hard Disk is .. "
lsblk
echo ""
sleep 2
