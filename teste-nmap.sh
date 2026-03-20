#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

# E:
sudo nmap -T4 -A -v 45.79.59.158

# S:
sudo nmap -T4 -A -v 172.67.221.192

sudo nmap -T4 -A -v 104.21.86.163

clear

echo "Operação Concluída com Êxito!"
