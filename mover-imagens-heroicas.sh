#!/bin/bash

read -p "Deseja mover as imagens pra pasta designada? [S/N] " img

if [ $img = S ]||[ $img = s ]; then
	echo
else
	exit
fi

cd ~/Downloads

ext=`ls | grep jpg`

if [[ $ext ]]; then
	mv *.jpg "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhuma imagem .jpg encontrada."
fi

ext=`ls | grep jpeg`

if [[ $ext ]]; then
	mv *.jpeg "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhuma imagem .jpeg encontrada."
fi

ext=`ls | grep png`

if [[ $ext ]]; then
	mv *.png "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhuma imagem .png encontrada."
fi

ext=`ls | grep gif`

if [[ $ext ]]; then
	mv *.gif "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhuma imagem .gif encontrada."
fi

ext=`ls | grep webp`

if [[ $ext ]]; then
	mv *.webp "/media/eu/Windows 10/Users/eu/Downloads"
else
	echo "Nenhuma imagem .webp encontrada."
fi
