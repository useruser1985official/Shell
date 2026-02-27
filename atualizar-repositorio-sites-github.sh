#!/bin/bash

read -p "Deseja atualizar a pasta de Projetos de Sites? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

cd /media/eu/Windows_10/Projetos/Git

if [ -d ProjetosSitesCriados ]; then
	cd ProjetosSitesCriados

	rm -rf "Front"

	rm -rf "JavaWeb"

	rm -rf "PHP"

	cp -r "/media/eu/Windows_10/Projetos/Front/" .

	rm -rf "Front/TesteArquivos"

	cp -r "/media/eu/Windows_10/Projetos/JavaWeb/" .

	cp -r "/media/eu/Windows_10/xampp/htdocs/" .

	mv htdocs PHP

	cd "PHP"

	rm -rf dashboard

	rm -rf img

	rm -rf webalizer

	rm -rf xampp

	rm applications.html

	rm bitnami.css

	rm Projetos.lnk

	clear

	echo "Operação Concluída com Êxito!"
else
	echo "A pasta de Projetos de Sites não Existe!"

	exit
fi

read -p "Deseja limpar a pasta de Projetos de Sites? [S/N] " limp

if [ $limp = S ]||[ $limp = s ]; then
	cd /media/eu/Windows_10/Projetos/Git

	rm -rf "ProjetosSitesCriados"

	clear

	echo "A Pasta de Projetos de Sites foi Excluída!"
fi