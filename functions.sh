#! /bin/bash
# variable scope is global in bash
function funcName()
{
    # print the argument 1
    echo $1
    echo "This is new function"
}

funcName hi

function funcCheck()
{
    returnvalue="i love linux"   
}
returnvalue="i love mac"
echo $returnvalue
funcCheck
echo $returnvalue
