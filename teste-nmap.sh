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
sudo nmap -T4 -A -v 147.79.105.68

sudo nmap -T4 -A -v 147.93.14.189

sudo nmap -T4 -A -v 34.120.251.119

sudo nmap -T4 -A -v 91.108.127.86

# S:
sudo nmap -T4 -A -v 104.21.86.163

sudo nmap -T4 -A -v 172.67.221.192

clears

echo "Operação Concluída com Êxito!"
