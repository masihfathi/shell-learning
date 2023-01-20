#!/bin/bash
# this is line one comment
: ' this is multi line comment

this is another line of comment'
# heardoc in order to echo string to output
cat << EOL
 This is heardoc command
EOL
#cat >> file.txt

count=9
if [ $count -lt 10 ]
then
    echo "count equal to $count"
else
    echo "else is run"
fi

if [ $count -lt 10 ]
then
    echo "count equal to $count"
else
    echo "else is run"
fi
cat << EOL
count updated to 10

to test if elif else conditions
EOL

count=10
if (( $count < 10 ))
then
    echo "count equal to $count"
elif (( $count == 10 ))
then
    echo "count equal to 10!!"
else
    echo "else is run"
fi
: ' now it is time to and opearator'
age=10

if [ "$age" -gt 9 ] && [ "$age" -lt 40 ]
then
    echo "Age requirement is legal"
else
    echo "Age requirement is not allowed"
fi

if [ "$age" -gt 9 ] || [ "$age" -lt 40 ]
then
    echo "Age requirement is legal"
else
    echo "Age requirement is not allowed"
fi
# While Loop
number=1
while [ $number -lt 10 ]
do
   echo "$number"
   number=$(( number+1 ))
done
cat << EOL
 for loop
EOL
for i in 1 2 3 4
do
   echo $i   
done

cat << EOL
 for range loop
 {start..ending..increment}
EOL
for i in {0..10..2}
do
   echo $i   
done
for (( i=0; i<=10; i++))
do
    if [ $i -gt 5 ]
    then
        break
    fi
   echo 'new loop'+$i
   
done
number=1
until [ $number -ge 10 ]
do
   echo $number
   number=$((number+1))
done
for i in 1 2 3 4 5
do
   echo "${i}"   
done
for (( i=0; i<=10; i++))
do
    if [ $i -gt 5 ]
    then
        break
    fi
   echo "${i}"   
done
for (( i=0; i<=10; i++))
do
    if [ $i -eq 5 ] || [ $i -eq 7 ]
    then
        continue
    fi
    echo "${i}"   
done

# read argument from command
# echo $1 $2 $3
# args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}
# print the length of input
# echo $#
while read line 
do
echo "${line}"
# read the input via ${1}
done < "${1:-/dev/stdin}"

#ls -al 1>test.txt error.txt
