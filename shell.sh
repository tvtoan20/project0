#!/bin/bash

read -p "Enter Directory: " a
  if [ -d "$a" ]
  then
  	ls $a > ${1[@]}
        for i in ${1[@]}
	do
	  echo $i
	done
  else
        echo "Directory doesn't exist"
  fi
