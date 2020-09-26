#!/bin/bash -x
clear

# Description : This script is to audit a server after manual installation to ensure that installation was successful
# Author : jane Waweru
# Date : September 18th 2020
echo ""

# The variables to use in this script are as follows


Distro=$(cat /etc/*release |grep ^NAME |awk -F= '{print $2}')
now=$(date)

echo ""
echo "Audit date is .............." $date
echo ""
date

echo "Audit date is: " $now  > failed-audit-items
echo ""
sleep 2

echo "This script is to audit a server after manual installation to ensure that installation was successful, please be patient"
	sleep 2
	echo ""
	echo "The linux Distro on this server is ....... $Distro"
	echo ""
	sleep 2
echo "Checking if the file /boot/grub2/grub.cfg exists..."
	echo ""
	sleep 2
	if [ -f /boot/grub2/grub.cfg ]
	then
	echo ""
	echo "The file /boot/grub2/grub.cfg exists"
	echo ""
	else
	echo ""
	echo "the file /boot/grub2/grub.cfg does not exist"
	echo ""
	echo "THE /boot/grub2/grub.cfg FILE IS MISSING" >>failed-audit-items
        echo ""
	fi
	echo ""
echo "checking if User ansible exists, please be patient "
	echo ""
	cat /etc/passwd | grep ansible
	if [ $? -eq 0 ]
	then 
	echo ""
	echo "user ansible exists"
	else
	echo "User Ansible does not exist"
	echo ""
	echo "USER ANSIBLE MISSING" >>failed-audit-items
        echo ""
	fi
	sleep 2
echo "Checking if the home directory /home/ansible exists, please be patient "
	echo ""
	if [ -d /home/ansible ]
	then
	echo "/home/ansible exists"
	else	
	echo "/home ansible does not  exist"
	echo "USER ANSIBLE HOME DIRECTORY MISSING " >>failed-audit-items
	fi
	sleep 2
echo "checking if the file /etc/selinux exists, please be patient "
	echo ""
	if [ -f /etc/selinux/config ]
	then 
	echo ""
	echo "	selinux file exists, audit is passed"
	else
	echo "	selinux file does not exist, the server will need to be reconfigired"
	echo ""
	echo "THE /etc/selinux/config FILE IS MISSING" >>failed-audit-items
        echo ""
	fi
	sleep 2
	echo ""
echo "checking the state of selinux"
	echo ""
	echo "Your selinux permission is set as follows ....... $(cat /etc/selinux/config |grep ^SELINUX=.*)"
	echo ""
	sleep 2
	echo "another command to check state of the selinux only works if the SELINUX is in line number 7"
	echo ""
	awk 'NR==7' /etc/selinux/config |  awk -F= '{print$2}'
	sleep 2
	echo ""
	echo "another command of getting selinux status using the getenforce command" 
	echo ""
	sleep 2
	getenforce
	echo ""
	sleep 2
	echo "another way to check state of selinux using grep and ^ and awk"
	echo ""
	grep ^SELINUX= /etc/selinux/config |awk -F= '{print$2}'
	sleep 2
	echo ""	
	echo "another way to get selinux status using the sestatus command"
	echo ""
	sleep 2
	echo "$(sestatus | grep 'Current mode'| awk -F: '{print $2}')"
	echo ""
	sleep 2
set -x
echo "Checking the number of cpus, please be patient "
	echo ""
	echo "	The number of CPUs are ....." $(lscpu | grep '^CPU(s)' | awk -F: '{print$2}')
	echo ""
	sleep 2
	echo "another way to find the number of cpus is by using nproc command"
	echo "The number of cpus is $(nproac)"
	echo ""
set +x
echo "Checking the size of the memory, please be patient"
	echo ""
	sleep 2
	echo "Total System Memory is .. $(free | grep Mem |awk '{print $2}')"
	echo ""
	sleep 2
echo "Checking if the file /etc/ssh/sshd_config exists, please be patient "
	echo ""
	if [ -f /etc/ssh/sshd_config ]
	then
	echo "The file  /etc/ssh/sshd_config exists"
	echo ""
	else
	echo "The file  /etc/ssh/sshd_config does not exist"
	echo ""
	echo "FILE /etc/ssh/sshd_config FILE IS MISSING" >>failed-audit-items
	echo ""
	fi
	sleep 2	
