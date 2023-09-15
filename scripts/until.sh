#!/bin/bash

i=1

until test $i -eq 20
do
	echo "Adicionando 1... Valor: $i"
	i=$(expr $i + 1)
done
