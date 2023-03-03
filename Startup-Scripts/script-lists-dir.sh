#! /bin/bash

search_dir=/usr/local

for entry in "$search_dir"/*
do
  echo "$entry"
done
