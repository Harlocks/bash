#!/bin/bash
# -----------------------------------
# Autor : Erick Robert
# Email : h4rt3ck@pm.me
# GitHub: https://github.com/harlocks
# -----------------------------------
# Data  : 06/09/2023
# -----------------------------------
# Script básico para fazer cálculos
# -----------------------------------
clear

# -----------------------------------

num1=$1
num2=$2

# -----------------------------------
# Verifica se foi passado argumentos na chamada de comando

if [ -z $num1 -o -z $num2 ]
then
  echo "❗Argumentos insuficientes"
  echo "❗Abortando..."
  exit 1
fi

# -----------------------------------

echo "-----------------------------------"
echo "1) - Soma"
echo "2) - Subtração"
echo "3) - Multiplicação"
echo "4) - Divisão"
echo "q) - Sair"
echo "------------------------------------"
read -p "Opção -> " opcao_1
echo "------------------------------------"

case "$opcao_1" in
  1) 
    clear
    echo "------------------------------------"
    echo "✅ $num1 + $num2 = $(expr $num1 \+ $num2)"
    echo "------------------------------------"
    ;;
  2)
    clear
    echo "------------------------------------"
    echo "✅ $num1 - $num2 = $(expr $num1 \- $num2)"
    echo "------------------------------------"
    ;;
  3)
    clear
    if [ $num1 -eq 0 -o $num2 -eq 0 ]
    then
      echo "❗ Algum dos números tem o valor de 0"
      echo "❗ Abortando..."
      exit 1
    else
      echo "------------------------------------"
      echo "✅ $num1 X $num2 = $(expr $num1 \* $num2)"
      echo "------------------------------------"
    fi
    ;;

  4)
    clear
    if [ $num1 -eq 0 -o $num2 -eq 0 ]
    then
      echo "❗ Algum dos números tem o valor de 0"
      echo "❗ Abortando..."
      exit 1
    else
      echo "------------------------------------"
      echo "✅ $num1 / $num2 = $(expr $num1 / $num2)"
      echo "------------------------------------"
    fi
    ;;
esac

