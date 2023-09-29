#!/bin/bash
# -----------------------------------
# Autor : Erick Robert
# Email : h4rt3ck@pm.me
# GitHub: https://github.com/harlocks
# -----------------------------------
# Data  : 11/09/2023
# -----------------------------------
# Script para gerar arquivos
# -----------------------------------
clear


# -----------------------------------

read -p "Digite o nome do arquivo -> " ARQUIVO
read -p "Digite o tipo de arquivo[txt, sh] -> " TIPO
read -p "Digite até que quantidade deseja gerar -> " QUANTIDADE

for qt in $(seq 1 $QUANTIDADE)
do
	touch $ARQUIVO$qt.$TIPO
done
