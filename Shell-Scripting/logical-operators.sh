#! /bin/bash

age=25

#One way to use the AND operator is with && .

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
	echo "Valid age"
	else
	echo "Age not valid"
fi


# The other way is to use -a flag.

if  [[ "$age" -gt 18  -a  "$age" -lt 30 ]]
then
        echo "Valid age"
        else
        echo "Age not valid"
fi



# TO use the OR operator we use ||
if [ "$age" -gt 18 ] || [  "$age" -lt 30 ]
then
        echo "Valid age"
        else
        echo "Age not valid"
fi


# The other way is to use -o flag.

if [[ "$age" -gt 18  -o  "$age" -lt 30 ]]
then
        echo "Valid age"
        else
        echo "Age not valid"
fi
