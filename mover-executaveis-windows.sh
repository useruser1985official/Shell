#!/bin/bash

read -p "Deseja mover os executáveis para a pasta especificada? [S/N] " execs

if [ $execs = S ]||[ $execs = s ]; then
	echo
else
	exit
fi

cd ~/Downloads

ext=`ls | grep exe`

if [[ $ext ]]; then
	mv *.exe "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhum executável .exe encontrado."
fi

ext=`ls | grep msi`

if [[ $ext ]]; then
	mv *.msi "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhum instalador .msi encontrado."
fi
