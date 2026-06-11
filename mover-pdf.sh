#!/bin/bash

read -p "Deseja mover os PDFs para a pasta especificada? [S/N] " pdf

if [ $pdf = S ]||[ $pdf = s ]; then
	echo
else
	exit
fi

cd ~/Downloads

ext=`ls | grep pdf`

if [[ $ext ]]; then
	mv *.pdf "/media/eu/Windows_10/Users/eu/Downloads"
else
	echo "Nenhum arquivo PDF encontrado."
fi
