#! /bin/bash
# scan file line by line
echo "Enter filename to print from awk"
read filename
if [[ -f $filename ]]
then 
   # search for mac string in the file
   # match for $2 word
   awk '/mac/ {print $2}' $filename
else 
   echo "${filename} dosen't exist"
fi