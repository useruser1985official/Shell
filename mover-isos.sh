#!/bin/bash

read -p "Deseja mover as imagens ISO para a pasta especificada? [S/N] " iso

if [ $iso = S ]||[ $iso = s ]; then
	echo
else
	exit
fi

cd ~/Downloads

ext=`ls | grep iso`

if [[ $ext ]]; then
	mv *.iso "/media/eu/Windows_10/Users/eu/Downloads"
else
	echo "Nenhuma imagem ISO encontrada."
fi
