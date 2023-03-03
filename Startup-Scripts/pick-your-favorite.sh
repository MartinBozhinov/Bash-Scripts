#! /bin/bash

echo "Which would you choose , type the number of preffered option"

choice_one="1.Cake"
choice_two="2.Hamburger"
choice_three="3.Pizza"

echo "$choice_one"
echo "$choice_two"
echo "$choice_three"

read number

if [ $number -eq "1" ] 
then
       echo "Great choice!"
  elif [ $number -eq "2" ]
   then
  	 echo "This food contains alot of calories"
  elif [ $number -eq "3" ]
    then
 	  echo "Not too good for you!"
fi
