#! /bin/bash
# scan file line by line
echo "Enter filename to subsititurte useing sed"
read filename
if [[ -f $filename ]]
then 
   # replace i with I in global pattern with sed
   # cat $filename | sed 's/i/I/g'
   # add replace in new file 
   sed 's/i/I/g' $filename > newfile.txt
else 
   echo "${filename} dosen't exist"
fi