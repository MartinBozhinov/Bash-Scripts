#! /bin/bash

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 - num2 ))

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 \* $num2 )

num3=20.5
num4=5.6

# We are using command bc to calculate floating numbers.

echo "20.5+5.6" | bc
echo "20.5-5.6" | bc
echo "20.5/5.6" | bc

# If we want to see exact amount of decimal places we use scale=2 for example

echo "scale=2;20.5/5.6" | bc


# If we want to use a the math library of | BC we add -l on the end of the expression

num=27

echo "scale=2;sqrt($num)" | bc -l

