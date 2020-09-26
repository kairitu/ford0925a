#!/bin/bash


name=Ellys
Processor=$(nproc)
PlatForm=$(uname)
Kernel_Vers=$(uname -r|awk -F. '{print$1}')
os=$(cat /etc/*-release|head -1|awk '{print$1}')

#echo "$name is a good student"
#echo "it is very fun to work with $name "
#echo "the manager is always talking about how dood $name is"
#echo "$name is a hardworking guy"

#echo "the system $name is working has $Processor  processor"

#echo "the platform running is $PlatForm  "

#echo "the first digit of our kernel is $Kernel_Vers "
#echo "The linux flavor running here is $os "

#Example: check if the number of processor is less than two then display this system is not valid
#condition -le -gt -ge == != -ne 


if   [ $Processor -lt 2 ]

then
  echo "This system is not valid"

else 
  echo "The system is valid"

fi 
