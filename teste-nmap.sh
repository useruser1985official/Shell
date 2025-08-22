#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

# R:
sudo nmap -T4 -A -v 65.181.111.13

# F:
sudo nmap -T4 -A -v 77.37.42.227

sudo nmap -T4 -A -v 147.79.105.35

sudo nmap -T4 -A -v 147.93.14.189

sudo nmap -T4 -A -v 34.120.251.119

# S:
sudo nmap -T4 -A -v 172.67.221.192

sudo nmap -T4 -A -v 104.21.86.163

# A:
sudo nmap -T4 -A -v 191.252.101.243

sudo nmap -T4 -A -v 34.120.251.119

clear

echo "Operação Concluída com Êxito!"
