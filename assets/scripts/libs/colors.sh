#!/bin/bash
# -----------------------------------
# @Author : Erick Robert
# @Email  : h4rt3ck@pm.me
# @GitHub : https://github.com/harlocks
# -----------------------------------
# Data    : 06/09/2023
# -----------------------------------
# Script básico que armazena todas
# as cores que o shell suporta.
# -----------------------------------
clear

# -------------------------------------------------------------------
# --------------------------- @STYLES -------------------------------
# -------------------------------------------------------------------

reset="\e[0m" #@ Quando você quiser resetar e deixar as próximas sentenças "Padrão".
bold="\e[1m" #@ Deixa o texto em negrito.
underline="\e[4m" #@ Deixa o texto sublinhado.
blink="\e[5m" #@ Deixa o texto piscando.
hidden="\e[8m" #@ O texto fica oculto.

# -------------------------------------------------------------------
# --------------------------- @FOREGROUND ---------------------------
# -------------------------------------------------------------------

f_black="\e[30m"
f_red="\e[31m"
f_green="\e[32m"
f_yellow="\e[33m"
f_blue="\e[34m"
f_magenta="\e[35m"
f_cyan="\e[36m"
f_white="\e[37m"

# -------------------------------------------------------------------
# --------------------------- @BACKGROUND ---------------------------
# -------------------------------------------------------------------

b_black="\e[40m"
b_red="\e[41m"
b_green="\e[42m"
b_yellow="\e[43m"
b_blue="\e[44m"
b_magenta="\e[45m"
b_cyan="\e[46m"
b_white="\e[47m"