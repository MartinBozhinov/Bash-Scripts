#! /bin/bash/

read -p  "Write directory path here : " dir_path

if [ ! -d "$dir_path" ]; then
	echo "Error: Direcotry does not exists"
	exit 1
fi

ls -l "$dir_path" | sort

