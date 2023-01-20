#! /bin/bash

echo "Enter filename to search text from"
read filename
if [[ -f $filename ]]
then 
   echo 'Enter the text to search'
   read grepvar
   # remove the case sensivity with -i 
   # -n number of times its exists 
   grep -i $grepvar $filename
else 
   echo "${filename} dosen't exist"
fi
   