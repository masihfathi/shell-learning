#! /bin/bash
# array
car=('BMW' 'MERCEDED' 'TOYOTA')

echo "${car[@]}"

echo "${car[1]}"

# print with index
echo "${!car[@]}"
unset car[2]
car[2]='TOYOTA' 
# print total array length
echo "${#car[@]}"

