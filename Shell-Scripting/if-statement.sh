#! /bin/bash

# -eq - is equal to
# -ne - is not equal to 
# -gt - is greater than
# -ge - is greater than or equal to
# -lt - is less than
# -le - is less than or equal to
# < - is less than
# <= - less than or equal to 
# > - is greater than
# >= - is greater than or equal to 

#String Comparisons:  
#   ---------------------------------
#   =  compare if two strings are equal
#  !=  compare if two strings are not equal
#  -n  evaluate if string length is greater than zero
#  -z  evaluate if string length is equal to zero 


# WHEN WE USE < , > etc.. operators we need to put double brackets  [[]] or (())

count=10

if [ $count -eq 10 ]
then
   echo "condition is true"
fi


word=abc

if [ $word = "abc" ]
then
  echo "Strings are the same"
fi

anotherword=a

if [ $anotherword > "b" ]
then 
  echo "Another word is bigger in ASCII"
else 
  echo "Another word is smaller in ASCII"
fi


thirdword=a

if [ $thirdword = "b" ]
then 
   echo "Condition is not true"
elif [ $thirdword = "a" ]
then 
   echo "Condition is true"
else 
   echo "Condition is never true"
fi
