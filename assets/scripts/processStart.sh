#!/bin/bash
# ----------------------------------------
# @Author : Erick Robert
# @Email  : h4rt3ck@pm.me
# @GitHub : https://github.com/harlocks
# ----------------------------------------
# Data    : 30/09/2023
# ----------------------------------------
# Script pra monitorar a execução de um programa
# Aberto até que o programa X seja executado
# Quando executado, é retornado uma mensagem com ✅
# ----------------------------------------
clear

# ----------------------------------------
if test $# -le 0; then
    echo -e "------------------------------------------"
    echo -e "❗ Quantidade insuficiente de parâmetros"
    echo -e "------------------------------------------"
    echo -e "❗ Usage    : $0 [program]"
    echo -e "------------------------------------------"
    exit 1
fi
# ----------------------------------------

until $(ps axu |grep $1 |grep -v grep > /dev/null)
do
    echo "⏳ Abra o $1"
    sleep 2
done

clear

echo -e "✅ $1 Iniciado..."
echo -e "✅ PID: $(pgrep $1)"