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

# ----------------------- IMPORTS ---------------------------
. ./colors.sh

# ----------------------- VALUES ----------------------------

last_file=$(find $HOME/Documentos/ -type f -mtime -7 -exec basename {} \; |awk -F/ '{print $NF}' |head -n1)
# ----------------------- WELCOME ---------------------------

echo -e "------------------------------------------------------"
echo -e "⌛ Arquivo modificado nos últimos 7 dias: $f_red$last_file$c_reset"
echo -e "------------------------------------------------------"
