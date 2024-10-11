#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

sudo nmap -T4 -A -v 65.181.111.13

sudo nmap -T4 -A -v 84.32.84.33

sudo nmap -T4 -A -v 191.252.101.243

clear

echo "Operação Concluída com Êxito!"
