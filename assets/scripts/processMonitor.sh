#!/bin/bash

if test $# -le 0
then
	"Quantidade de parâmetros insuficientes"
	"Abortando..."
	exit 1
fi

process_monitor=$(ps axu |wc -l)

while test $process_monitor -lt $1
do
	echo "-----------------------------------------"
	echo "Qt. de Processos atuais: $process_monitor"
	echo "-----------------------------------------"
	sleep 2
done

