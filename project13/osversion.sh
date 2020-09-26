#!/bin/bash

clear
# Description: This script breaks down the output of (cat /etc/*release)
# Author: Jane Waweru
# Date: September 18th 2020
sleep 2
echo ""
echo "The Linux Flavor running is ... "
sleep 2
echo ""
cat /etc/*release |grep PRETTY_NAME | awk -F= '{print $2}'
echo ""
sleep 2
echo "The version id is ..."
echo ""
sleep 2
cat /etc/*release |grep VERSION_ID
echo ""
sleep 2

