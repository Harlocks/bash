#!/bin/bash
# -----------------------------------
# @Author : Erick Robert
# @Email  : h4rt3ck@pm.me
# @GitHub : https://github.com/harlocks
# -----------------------------------
# Data    : 29/09/2023
# -----------------------------------
# Script que extrai os usuários reais da máquina
# -----------------------------------
source /etc/login.defs 2> /dev/null

# -----------------------------------
# h_user=$(cat -n /etc/passwd |cut -d":" -f1)
h_UID=$(cat -n /etc/passwd |cut -d":" -f3)
# h_home=$(cat -n /etc/passwd |cut -d":" -f6)
# h_desc=$(cat -n /etc/passwd |cut -d":" -f5)

for teste in $h_UID
do
    if test $teste -le 1000; then
    echo -e "UID -> $teste"
    fi
done

# echo -e "USUÁRIO\t UID \t HOME \t DESCRIÇÃO"
# echo -e "$h_user\t $h_UID\t $h_home\t $h_desc"