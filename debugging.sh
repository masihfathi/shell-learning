#! /bin/bash
set -x
echo "Enter filename to substitute using sed"
read filename

if [[-f $filename ]]
set +x
then
    sed -i 's/2000/8000/g' $filename
else
   echo "$filename dosen't exists"
fi
# how debugging
# bash -x ./debugging.sh