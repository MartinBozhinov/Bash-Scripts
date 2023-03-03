#! /bin/bash

echo -e "Enter the name of the file : \c"
read $file_name

# If we use > our file will be overwritten
# If we use >> we will append a text to the file with the cat command.
# -w stands for writable permission on the file
# -r stands for reading permission on the file 



if [ -f $file_name ]
then 
   if [ -w $file_name ]
    then
       echo "Type some text data. To quit press ctrl+d."
       cat >> $file_name 
    else
       echo "File do not have right permissions!"
    fi
else
   echo "$file_name does not exist!"
fi
