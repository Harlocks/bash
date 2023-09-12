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
back_name="backup_home_$data.tgz"
# back_home=
week_verify=$(find $back_folder -type f -ctime 7 -name backup_home_\*)

# -----------------------------------
if ! test -d $HOME/Backups
then
	echo "❗ Diretório Backups não existe..."
	echo "❗ Gostaria de criar a pasta de Backups?"
	read -p "[S/N] -> " opcao_create
	case "$opcao_create" in
	  S|s)
	       clear
	       mkdir $back_folder
	       echo "✅ Pasta criada com sucesso"
	       ;;
	  N|n)
	       clear
	       echo "❗ Abortando..."
	       exit 1
	       ;;
	  *)
	       echo "❗ Opção inválida"
	esac

fi

# -----------------------------------

if test "$week_verify"
then
  echo "Foi detectado um backup na última semana"
  read -p "Gostaria de continuar? [S/N]" opcao_1
  case "$opcao_1" in
  	S|s) 
	  clear
	  echo "Prosseguindo..."
	  ;;
  	N|n)
	  clear
	  exit 1
	  ;;
	*)
	  clear
	  echo "❗ Opção inválida"
	  ;;
  esac
else
  echo "⌛ Não foi detectado nenhum backup na última semana."
  echo "⌛ Continuando com backup..."
fi


# -----------------------------------

tar -cvzf $back_name . > logs.txt 2> error-logs.txt
mv $back_name $back_folder
