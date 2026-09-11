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
	mv -i *.jpg "/run/media/eu/Windows/Projetos/Temporary"
else
	echo "Nenhuma imagem .jpg encontrada."
fi

ext=`ls | grep jpeg`

if [[ $ext ]]; then
	mv -i *.jpeg "/run/media/eu/Windows/Projetos/Temporary"
else
	echo "Nenhuma imagem .jpeg encontrada."
fi

ext=`ls | grep png`

if [[ $ext ]]; then
	mv -i *.png "/run/media/eu/Windows/Projetos/Temporary"
else
	echo "Nenhuma imagem .png encontrada."
fi

ext=`ls | grep gif`

if [[ $ext ]]; then
	mv -i *.gif "/run/media/eu/Windows/Projetos/Temporary"
else
	echo "Nenhuma imagem .gif encontrada."
fi

echo

read -p "Deseja apagar as fotos não transferidas? [S/N] " opc

echo

ext=`ls | grep jpg`

if [[ $ext ]]; then
	rm -f *.jpg
else
	echo "Nenhuma imagem .jpg encontrada."
fi

ext=`ls | grep jpeg`

if [[ $ext ]]; then
	rm -f *.jpeg
else
	echo "Nenhuma imagem .jpeg encontrada."
fi

ext=`ls | grep png`

if [[ $ext ]]; then
	rm -f *.png
else
	echo "Nenhuma imagem .png encontrada."
fi

ext=`ls | grep gif`

if [[ $ext ]]; then
	rm -f *.gif
else
	echo "Nenhuma imagem .gif encontrada."
fi

ext=`ls | grep webp`

if [[ $ext ]]; then
	rm -f *.webp
else
	echo "Nenhuma imagem .webp encontrada."
fi

ext=`ls | grep avif`

if [[ $ext ]]; then
	rm -f *.avif
else
	echo "Nenhuma imagem .avif encontrada."
fi

ext=`ls | grep heic`

if [[ $ext ]]; then
	rm -f *.heic
else
	echo "Nenhuma imagem .heic encontrada."
fi