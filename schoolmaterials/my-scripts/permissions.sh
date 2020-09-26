#!/bin/bash

# Description: This script goes into the scripting folder and assigns a permission level 600 for all directories and 701 for files

# Author : jane Waweru

# Date : September 14th 2020


clear

for ITEM in $(ls -l /home/kairitu/unixtrainings-materials/school-material/my-scripts| awk '{print $9}')

#for i in $ITEM ;


do

echo "file of folder path is /home/kairitu/unixtrainings-materials/school-material/my-scripts/$ITEM"




if [ -d $ITEM ]

then

	chmod 777 $ITEM

elif [ -f $ITEM ]

then

	chmod 777 $ITEM

fi


done

