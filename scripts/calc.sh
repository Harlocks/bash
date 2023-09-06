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

if [ -z $num1 -o -z $num2 ]
then
  echo "❗Argumentos insuficientes"
  echo "❗Abortando"
  exit 1
fi


