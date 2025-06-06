#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

sudo nmap -T4 -A -v 65.181.111.13

sudo nmap -T4 -A -v 147.79.105.163

sudo nmap -T4 -A -v 147.93.14.189

sudo nmap -T4 -A -v 34.120.251.119

clear

echo "Operação Concluída com Êxito!"
