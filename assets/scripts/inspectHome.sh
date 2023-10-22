#!/bin/bash
# ----------------------------------------
# @Author : Erick Robert
# @Email  : h4rt3ck@pm.me
# @GitHub : https://github.com/harlocks
# ----------------------------------------
# Data    : 30/09/2023
# ----------------------------------------
# Script que inspeciona a pasta HOME de todos
# os usuários da máquina a procura de arquivos
# com uma extensão desejada.
# ----------------------------------------
clear

if test $# -le 0; then
    echo "----------------------------------------"
    echo "Quantidade de parâmetros insuficientes"
    echo "Usage: $0 [<Directory>]"
    echo "----------------------------------------"
    exit 1
fi

HOME=$1

if ! test -d "$HOME"; then
    echo "----------------------------------------"
    echo "Usuário ou diretório não existe!"
    echo "----------------------------------------"
    exit 1
fi

jpg=$( find "$HOME" -name "*.jpg" |wc -l )
mp3=$( find "$HOME" -name "*.mp3" |wc -l ) 
mp4=$( find "$HOME" -name "*.mp4" |wc -l )

echo "----------------------------------------"
echo "Diretório: $HOME"
for teste in $jpg
do
    echo "Arquivos JPG: $teste"
done

for teste1 in $mp3
do
    echo "Arquivos MP3: $teste1"
done

for teste2 in $mp4
do
    echo "Arquivos MP4: $teste2"
done
echo "----------------------------------------"

