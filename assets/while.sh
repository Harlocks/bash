#!/bin/bash

x=1
while test $x -le 20
do
	echo "Valor atual: $x -> Somando + 1"
	x=$(expr $x + 1)
done

