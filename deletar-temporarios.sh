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

sudo killall python

sudo killall pythonw

sudo killall python3

sudo killall pythonw3

sudo killall perl

sudo killall java

sudo killall javaw

sudo killall javac

sudo killall ruby

sudo killall node

sudo killall kotlin

sudo killall kotlinc

sudo killall VirtualBox

sudo killall VBoxSVC

sudo killall gpg

sudo killall code

sudo killall netbeans

sudo killall pycharm

sudo killall studio

sudo killall idea

sudo killall SceneBuilder 

sudo killall codeblocks

sudo killall pgAdmin4

sudo killall postgres

sudo killall sqlite3

sudo killall sqlitestudio

sudo killall qtcreator

sudo killall nmap

sudo killall zenmap

sudo killall wireshark

sudo killall transmission-gt

sudo killall PacketTracer

sudo killall linssid

sudo killall mysql-workbench

sudo killall git

if [ $nav = s ]||[ $nav = S ]; then
	sudo killall firefox

	sudo killall chrome

	sudo killall opera

	sudo killall msedge

	sudo killall tor

	sudo killall skype

	firefoxest="4o9lfgwh.default-1767886082070"

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/Cache2/*

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/OfflineCache/*

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/extensions/staged/

	rm -rf ~/.cache/mozilla/firefox/$firefoxest/extensions/trash/*

	rm -f ~/.mozilla/firefox/$firefoxest/user.js

	rm -f ~/.mozilla/firefox/$firefoxest/invalidprefs.js

    rm -f ~/.mozilla/firefox/$firefoxest/Invalidprefs.js

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