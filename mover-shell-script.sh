#!/bin/bash

read -p "Deseja mover os scripts SH para a pasta especificada? [S/N] " shell

if [ $shell = S ]||[ $shell = s ]; then
	echo
else
	exit
fi

cp -rf ~/Aplicações/Bash\ Scripts "/media/eu/Windows_10/Users/eu/Downloads"

echo "Operação Concluída com Êxito!"