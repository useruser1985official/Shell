#!/bin/bash

read -p "Deseja mesmo deletar todos os arquivos temporários e encerrar processos desnecessários? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	sudo clear
else
	exit
fi

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

sudo service ssh-agent stop

clear

killall firefox

killall chrome

killall opera

killall tor

killall python

killall python3

killall perl

killall java

killall ruby

firefoxest="7m2baab4.default-1641920849946"

rm -f ~/.cache/mozilla/firefox/$firefoxest/cache2/entries/*

rm -f ~/.cache/mozilla/firefox/$firefoxest/OfflineCache/*

rm -f ~/.cache/mozilla/firefox/$firefoxest/extensions/staged/*

rm -f ~/.cache/mozilla/firefox/$firefoxest/extensions/trash/*

rm ~/.mozilla/firefox/$firefoxest/user.js

rm ~/.mozilla/firefox/$firefoxest/invalidprefs.js

sudo apt-get autoclean

sudo apt clean -y

sudo apt autoremove --purge -y

# sudo rm -rf /tmp/*

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

echo

echo "Operação Concluída com Êxito!"
