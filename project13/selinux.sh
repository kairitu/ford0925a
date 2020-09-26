#!/bin/bash

# Description : This script goes to the selinux config file and sets the permission to permissive

# Author : jane Waweru

# Date : September 18th 2020

echo "Find the selinux config file, please wait...."

#perm=enforcing

if [ -f /home/kairitu/project13/selinux-conf ]

then 

echo ""

echo "The Selinux Conf file exists, permission will be set to $perm, please be patient..."

echo ""

#echo "Checking the current SELINUX permission, Please wait... "

sed -i 's/SELINUX=.*/SELINUX=enforcing/g' /home/kairitu/project13/selinux-conf  

echo "Selinux Permission has changed successfully"

echo ""

else 

echo "Selinux File does not exist, the program will exit now.."

exit

echo ""

fi

# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
##SELINUX=permissive
# SELINUXTYPE= can take one of three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
##SELINUXTYPE=targeted
