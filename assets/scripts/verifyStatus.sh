#!/bin/bash
# -----------------------------------
# @Author : Erick Robert
# @Email  : h4rt3ck@pm.me
# @GitHub : https://github.com/harlocks
# -----------------------------------
# Data    : 26/10/2023
# -----------------------------------
# Script verifica a conexão de um determinado site
# IP or Domain
# -----------------------------------
clear

msg="
Usage: $0 <site> <certificate>\n
----------------------------------------------------------\n
-http\t\tIndica que você quer verificar uma conexão HTTP\n
-https\t\tIndica que você quer verificar uma conexão HTTPS
"

# --- Verificação quantidade de argumentos.

if test $# -le 0; then
    echo "Quantidade insuficiente de parâmetros"
    echo -e $msg
    exit 1
fi

# --- Verificação de argumentos.

if test $2 = "-http"; then
    cert="http"
    echo $cert
elif teste $2 = "-https"; then
    cert="https"
else
    echo "Parâmetro inválido" 
    echo $msg
fi