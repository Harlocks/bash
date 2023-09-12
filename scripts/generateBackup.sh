#!/bin/bash
# -----------------------------------
# Autor : Erick Robert
# Email : h4rt3ck@pm.me
# GitHub: https://github.com/harlocks
# -----------------------------------
# Data  : 11/09/2023
# -----------------------------------
# Script básico para gerar backups
# -----------------------------------
clear

# -----------------------------------

data=$(date +%Y%m%d%H%M)
back_folder="$HOME/Backups"
week_verify=$(find $back_folder -type f -daystart -ctime 7)

# -----------------------------------
if ! test -d $HOME/Backups
then
	echo "❗ Diretório Backups não existe..."
	echo "❗ Abortando..."
	exit 1
fi

# -----------------------------------

if test "$week_verify"
then
  echo "Foi detectado um backup na última semana"
  read -p "Gostaria de continuar? [S/N]" opcao_1
  case "$opcao_1" in
  	S|s) 
	  clear
	  Prosseguindo...
	  ;;
  	N|n)
	  clear
	  exit 1
	  ;;
	*)
	  clear
	  echo "Opção inválida"
	  ;;
  esac
else
  echo "⌛ Não foi detectado nenhum backup na última semana."
  echo "⌛ Continuando com backup...
fi


# -----------------------------------



