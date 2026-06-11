#!/bin/bash

read -p "Deseja atualizar a pasta de Projetos em Front? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

cd /media/eu/Windows_10/Projetos/Git

if [ -d ProjetosSitesFront ]; then
	cd ProjetosSitesFront

	rm -rf *

	cp -r /media/eu/Windows_10/Projetos/Front/* .

	clear

	echo "Operação Concluída com Êxito!"
else
	echo "A pasta de Projetos de Sites não Existe!"

	exit
fi

read -p "Deseja limpar a pasta de Projetos em Front? [S/N] " limp

if [ $limp = S ]||[ $limp = s ]; then
	cd /media/eu/Windows_10/Projetos/Git

	rm -rf "ProjetosSitesFront"

	clear

	echo "A Pasta de Projetos em Front foi Excluída!"
fi