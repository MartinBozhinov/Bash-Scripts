#! /bin/bash

# Two-liner user input.

echo "Enter names : "
read  name1 name2 name3
echo "Your name is : $name1 $name2 $name3"

# One-liner user input.

read -p 'username : ' user_variable
echo "The username is: $user_variable"

# Silent fields // example while user type his password,the password must be hidden.

read -sp 'password : ' user_password
echo
echo "password : $user_password"

# While we want to save users multiple imports
echo "Enter names : "
read -a names
# names[0] - array type prints the element at zero index.
echo "Names : ${names[0]}, ${names[1]}, ${names[2]}"

# One more way of showing input without initializing a variables is with $REPLY

echo "Enter name : "
read 
echo "Name : $REPLY"

