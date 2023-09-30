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
clear

# -----------------------------------
# h_user=$(cat -n /etc/passwd |cut -d":" -f1)
h_UID=$(cat /etc/passwd |cut -d":" -f3)
h_passwd=$(cat /etc/passwd)
# h_home=$(cat -n /etc/passwd |cut -d":" -f6)
# h_desc=$(cat -n /etc/passwd |cut -d":" -f5)

for teste in $h_UID
do
    if test $teste -ge 1000 -a $teste -le 60000; then
    x_user=$(grep $teste /etc/passwd |cut -d":" -f1)
    x_UID=$(grep $teste /etc/passwd |cut -d":" -f3)
    x_home=$(grep $teste /etc/passwd |cut -d":" -f6)
    x_desc=$(grep $teste /etc/passwd |cut -d":" -f5)

    echo -e "USUARIO\t\t UID\t HOME\t\t\t DESCRIÇÃO"
    echo -e "$x_user\t $x_UID\t $x_home\t $x_desc"
    fi
done

# echo -e "USUÁRIO\t UID \t HOME \t DESCRIÇÃO"
# echo -e "$h_user\t $h_UID\t $h_home\t $h_desc"