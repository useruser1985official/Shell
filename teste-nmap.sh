#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

sudo nmap -T4 -A -v 45.79.76.106

sudo nmap -T4 -A -v 185.239.210.29

clear

echo "Operação Concluída com Êxito!"