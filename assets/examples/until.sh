#!/bin/bash

i=1
echo "Valor atual: $i"

until test $i -eq 20
do
	    i=$(expr $i + 1)
			echo "Adicionando 1... Valor atual: $i"
done

