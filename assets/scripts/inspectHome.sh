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

busca=$( find /home/* -name '*.mp3' -o -name '*.mp4' -o -name '*.jpg' -o -name '*.png')
mp3=$( $busca |grep "*.*.mp3" |wc -l )

echo "-----------------------------"
for arquivos in $busca; do
    echo "Arquivos .MP3: $mp3"
done

