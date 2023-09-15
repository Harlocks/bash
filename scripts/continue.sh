#!/bin/bash

clear

for var in $(cat frutas.txt)
do
	if test $var = "Manga"
	then
		echo "$var É a melhor fruta!"
		continue
	fi
	echo "Fruta: $var"
done

