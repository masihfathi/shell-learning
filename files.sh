#! /bin/bash

echo "Enter directory name to check"

read directory
# check file with dash before d
if [ -d "$directory" ]
then
    echo "$directory exists"
else 
    mkdir -p "${directory}"
    echo "$directory not exists"   
fi   

# or create file with touch and check with dash with -f 
# if  exists
# -f
# append text to file: echo "$fileText" >> $file 
# replace text to file: echo "$fileText" > $file 
echo "Enter file name which you want to read"
read filename
if [[ -f "$filename" ]]
then
    while IFS= read -r line
    do
       echo "${line}"
    done < $filename #reading from file
else
   echo "$filename dosen't exists"

fi
# rm filename 
  