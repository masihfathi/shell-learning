#! /bin/bash

echo "enter one string"
read str1

echo "enter another string"
read str2

if [ "$str1" \< "$str2" ]
then
   echo "$str2 is smaller than $str1"
elif [ "$str1" \> "$str2" ]
then
    echo "$str1 is smaller than $str2"
else   
    echo "both strings are equal"
fi
c=$str1$str2

echo ${str1^^}