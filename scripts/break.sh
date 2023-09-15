#!/bin/bash

clear

for var in $(cat frutas.txt)
do
	if test $var = "Manga"
	then
		echo "$var É a melhor fruta!"
		break
	fi
	echo "Fruta: $var"
done

