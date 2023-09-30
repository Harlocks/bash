#!/bin/bash
# -----------------------------------
# Autor : Erick Robert
# Email : h4rt3ck@pm.me
# GitHub: https://github.com/harlocks
# -----------------------------------
# Data  : 06/09/2023
# -----------------------------------
# Script básico que mostra o último arquivo 
# modificado dentro do período de 7 dias.
# -----------------------------------
clear

# ----------------------- IMPORTS ---------------------------
. ./colors.sh

# ----------------------- VALUES ----------------------------
folder_prune=("$HOME/.*" "$HOME/Backups/")
folder_find=$HOME/Documentos/
last_file=$(find $folder_find -type f -mtime -7 -exec basename {} \; |awk -F/ '{print $NF}' |head -n1)

# ----------------------- WELCOME ---------------------------
echo -e "------------------------------------------------------"
echo -e "⌛ Arquivo modificado nos últimos 7 dias: $f_green$last_file$c_reset"
echo -e "📁 Pasta da pesquisa: $folder_find "
echo -e "📁 Diretórios excluídos: "
echo -e "------------------------------------------------------"



