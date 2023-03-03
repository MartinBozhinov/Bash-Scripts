#! /bin/bash

# -e -- Makes it possible to read the " \ " backslash , without it it is going to print the \c literally 
# \c -- keeps the cursos on the same line .

echo -e "Enter the name of the file : \c"
read file_name

# -e is a flag for checking if the file exists in if statement

if [ -e $file_name ]
then 
  echo "$file_name found!"
 else
  echo "$file_name not found!"
fi


# If we want to check if it is a file or not we use flag -f

if [ -f $file_name ]
then 
  echo "$file_name found!"
 else
  echo "$file_name not found!"
fi

# To check a directory we use -d flag

# We have to types of files -- Block Special Files which are videos , pictures etc. , and Character Special Files which are other types of files
# To find block special file we use the flag -b and for character special file we use -c flag .

# To check if the file is empty or not we use the flag -s .


if [ -s $file_name ]
then 
  echo "$file_name not empty!"
 else
  echo "$file_name is empty!"
fi
