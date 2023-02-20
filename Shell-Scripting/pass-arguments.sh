#! /bin/bash

 # When we want to pass arguments directly after we call the script file name in the terminal 
 # with $ and index of arguments passed after the name of the svript // $0 will be the name of the script 

echo $0 $1 $2 $3 

# $@ saves the arguments as array which should be declared in variable

args=("$@")

echo ${args[0]}  ${args[1]}   ${args[2]}  ${args[0]} 

# When we assign the values in array the 0-th index is not pointing to the name of the file but for the first input 

# We can use and  echo $@ to print all the arguments 

echo $@ 

# If we want to print the number of arguments we use $#

echo $#


