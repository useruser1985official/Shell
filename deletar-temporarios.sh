#!/bin/bash

read -p "Deseja mesmo deletar todos os arquivos temporários e encerrar processos desnecessários? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	sudo clear
else
	exit
fi

clear

read -p "Deseja limpar o cache dos navegadores? [S/N] " nav

clear

echo -n "Parando serviços desnecessários. Aguarde..."

sudo service apache2 stop

sudo service atd stop

sudo service bind9 stop

sudo service dns-clean stop

sudo service mysql stop

sudo service openvpn stop

sudo service postgresql stop

sudo service rsync stop

sudo service ssh stop

sudo service tor stop

clear

killall python

killall pythonw

killall python3

killall pythonw3

killall perl

killall java

killall javaw

killall ruby

killall VirtualBox

killall VBoxSVC

killall gpg

killall code

killall netbeans64

killall pycharm64

killall studio64

killall SceneBuilder 

killall codeblocks

killall pgAdmin4

killall postgres

killall sqlite3

killall sqlitestudio

killall qtcreator

killall nmap

killall zenmap

killall wireshark

killall transmission-gt

killall PacketTracer

killall mysql-workbench

killall git

if [ $nav = s ]||[ $nav = S ]; then
	killall firefox

	killall chrome

	killall opera

	killall msedge

	killall tor

	killall skype

	firefoxest="jej5dy6o.default-1727965583869"

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/cache2/entries/*

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/OfflineCache/*

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/extensions/staged/

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/extensions/trash/*

	rm -f ~/.mozilla/firefox/$firefoxest/user.js

	rm -f ~/.mozilla/firefox/$firefoxest/invalidprefs.js

	rm -rf ~/.config/microsoft-edge/Default/Cache/*

	rm -rf ~/.config/microsoft-edge/Default/GPUCache/*

	rm -rf ~/.config/microsoft-edge/Default/CacheStorage/*

	rm -rf ~/.config/microsoft-edge/Default/File System/*

	rm -rf ~/.config/google-chrome/Default/Cache/*

	rm -rf ~/.config/google-chrome/Default/GPUCache/*

	rm -rf ~/.config/google-chrome/Default/CacheStorage/*

	rm -rf ~/.config/google-chrome/Default/File System/*

	rm -rf ~/.config/opera/cache/*

	rm -rf ~/.config/opera/GPUCache/*

	rm -rf ~/.config/opera/ShaderCache/*
fi

sudo apt autoclean

sudo apt clean -y

sudo apt autoremove --purge -y

sudo rm -r /var/lib/apt/lists/* -vf

sudo rm -rf /tmp/*

# sudo rm -f /var/lib/dpkg/lock

# sudo rm -f /var/lib/dpkg/lock-frontend

# sudo rm -f /var/lib/apt/lists/lock

# sudo rm -f /var/lib/apt/lists/lock-frontend

# sudo rm  -rf /var/backups/*

# sudo rm  -rf /var/tmp/*

# sudo find /var/log \( -iname "*.old" -o -iname "*.gz" -o -iname "*.xz" -o -iname "*.1" \) -delete

sudo sync

sudo sysctl vm.drop_caches=3

sudo sh -c 'echo 3>/proc/sys/vm/drop_caches'

read -p "Deseja rodar o Defrag? [S/N] " opc

clear

if [ $opc = S ]||[ $opc = s ]; then
	sudo e4defrag /
else
	echo "Defrag não Executado!"
fi

if [ $nav = s ]||[ $nav = S ]; then
	echo "O cache dos navegadores foram limpos!"
fi

echo

echo "Operação Concluída com Êxito!"
