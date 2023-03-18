#! /bin/bash

vehicle=$1

case $vehicle in
	"car" )
	 echo "Rent of $vehicle is 100 dollars" ;;
	"van" )
	 echo "Rent of $vehicle is 80 dollars" ;;
	"bike" )
	 echo "Rent of $vehicle is 20 dollars" ;;
	* )
	 echo "Unknown vehicle" ;;
esac


# Exercise

echo  "Enter some character: "
read value


case $value in 
	[a-z] )
	echo "You entered $value a to z" ;;
	[A-Z] )
	echo "You entered $value A to Z" ;;
	[0-9] )
	echo "You entered $value 0 to 9" ;;
	? )
	echo "You entered $value special character" ;;
	* )
	echo "Unknown input" ;;
esac

