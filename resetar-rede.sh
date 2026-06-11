#!/bin/bash

read -p "Deseja Mesmo Resetar as Opções de Rede? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

sudo ip link set down enp2s0

sleep 10

sudo /etc/init.d/nscd restart

sudo ip link set up enp2s0

sleep 10

echo "Operação Realizada com Êxito!"

read -p "Deseja reiniciar o sistema agora? [S/N] " reini

if [ $reini = S ]||[ $reini = s ]; then
	clear

	sudo shutdown -r now

	echo "Reiniciando, aguarde..."
fi