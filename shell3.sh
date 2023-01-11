#!/bin/bash

myfuntion(){
	read -p "Nhap ky tu:" d
        read -p "Enter file text:" b
	
	awk '{print}' $d/* > $b
        #ls $a | sort > $b
}

while true
do
read -p "Enter Directory: " a
  if [ -d "$a" ]
  then
	echo "Directory exists"
        myfuntion
  else
        echo "Directory doesn't exist"
  fi

read -p "Continue?(Y)" c
  if [ $c != "y" ] && [ $c != "Y" ]
  then
        echo "End."
        break
  fi
done
