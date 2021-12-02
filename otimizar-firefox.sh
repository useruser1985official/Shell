#!/bin/bash

read -p "Deseja corrigir todos os erros de script do Firefox? [S/N] " otimizar

if [ $otimizar -ne S ]&&[ $otimizar -ne s ]; then
	exit
fi

killall firefox

clear

firefoxest="chepc6ja.default-1625676055365"

cd "/media/eu/Windows 10/Projetos/HTML e JS/TesteArquivos/_arquivos"

cp -f prefs.js "/home/eu/.mozilla/firefox/$firefoxest"

cd "/home/eu/.mozilla/firefox/$firefoxest"

if [ -f prefs.js.BAK ]; then
	rm -f prefs.js.BAK & echo "Arquivo prefs.js.BAK deletado!"
else
	echo "Arquivo prefs.js.BAK não encontrado!"
fi

if [ -f user.js ]; then
	rm -f user.js & echo "Arquivo user.js deletado!"
else
	echo "Arquivo user.js não encontrado!"
fi

if [ -f user.js.BAK ]; then
	rm -f user.js.BAK & echo "Arquivo user.js.BAK deletado!"
else
	echo "Arquivo user.js.BAK não encontrado!"
fi

if [ -f prefs1.js ]; then
	rm -f prefs1.js & echo "Arquivo prefs1.js deletado!"
else
	echo "Arquivo prefs1.js não encontrado!"
fi

if [ -f prefs_*.* ]; then
	rm -f prefs_*.* & echo "Arquivo prefs_*.* deletado!"
else
	echo "Arquivo prefs_*.* não encontrado!"
fi

if [ -f prefs-*.* ]; then
	rm -f prefs-*.* & echo "Arquivo prefs-*.* deletado!"
else
	echo "Arquivo prefs_*.* não encontrado!"
fi

if [ -f invalidprefs.js ]; then
	rm -f invalidprefs.js & echo "Arquivo invalidprefs.js deletado!"
else
	echo "Arquivo invalidprefs.js não encontrado!"
fi

if [ -d extensions/staged ]; then
	rm -rf extensions/staged & echo "Diretório staged deletado!"
else
	echo "Diretório staged Não Encontrado"
fi

echo

read -p "Deseja iniciar o Firefox agora? [S/N] " iniciar

clear

rm -f "/home/eu/.cache/mozilla/firefox/$firefoxest/cache2/entries/*"

echo

if [ $iniciar = S ]||[ $iniciar = s ]; then
	firefox about:memory about:addons; echo "Firefox inicializado, minimize a memória dele."; echo
fi

echo "Clique em Qualquer Tecla pra Fechar"

read
