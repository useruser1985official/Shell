#!/bin/bash

read -p "Deseja corrigir todos os erros de script do Firefox? [S/N] " otimizar

if [ $otimizar != S ]&&[ $otimizar != s ]; then
	exit
fi

killall firefox

clear

firefoxest="jej5dy6o.default-1727965583869"

cd "/media/eu/Windows_10/Projetos/HTML e JS/TesteArquivos/arquivos"

sudo cp -f prefs.js "/home/eu/.mozilla/firefox/$firefoxest"

cd "/home/eu/.mozilla/firefox/$firefoxest"

if [ -f prefs.js.BAK ]; then
	rm -f prefs.js.BAK && echo "Arquivo prefs.js.BAK deletado!"
else
	echo "Arquivo prefs.js.BAK não encontrado!"
fi

if [ -f user.js ]; then
	rm -f user.js && echo "Arquivo user.js deletado!"
else
	echo "Arquivo user.js não encontrado!"
fi

if [ -f user.js.BAK ]; then
	rm -f user.js.BAK && echo "Arquivo user.js.BAK deletado!"
else
	echo "Arquivo user.js.BAK não encontrado!"
fi

if [ -f prefs1.js ]; then
	rm -f prefs1.js && echo "Arquivo prefs1.js deletado!"
else
	echo "Arquivo prefs1.js não encontrado!"
fi

if [ -f prefs_*.* ]; then
	rm -f prefs_*.* && echo "Arquivo prefs_*.* deletado!"
else
	echo "Arquivo prefs_*.* não encontrado!"
fi

if [ -f prefs-*.* ]; then
	rm -f prefs-*.* && echo "Arquivo prefs-*.* deletado!"
else
	echo "Arquivo prefs_*.* não encontrado!"
fi

if [ -f invalidprefs.js ]; then
	rm -f invalidprefs.js && echo "Arquivo invalidprefs.js deletado!"
else
	echo "Arquivo invalidprefs.js não encontrado!"
fi

if [ -d extensions/staged ]; then
	rm -rf extensions/staged && echo "Diretório extensions/staged deletado!"
else
	echo "Diretório extensions/staged não encontrado!"
fi

echo

read -p "Deseja iniciar o Firefox agora? [S/N] " iniciar

rm -f "/home/eu/.cache/mozilla/firefox/$firefoxest/cache2/entries/*"

clear

if [ $iniciar = S ]||[ $iniciar = s ]; then
	firefox about:memory about:addons; clear; echo "Firefox inicializado, minimize a memória dele."
else
	clear
fi
