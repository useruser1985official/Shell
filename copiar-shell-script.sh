#!/bin/bash

read -p "Deseja copiar os scripts SH para a pasta especificada? [S/N] " shell

if [ $shell = S ]||[ $shell = s ]; then
	echo
else
	exit
fi

cp -rf ~/Aplicações/Bash\ Scripts "/run/media/eu/Windows/Projetos/Temporary"

echo "Operação Concluída com Êxito!"