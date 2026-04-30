#!/bin/bash

read -p "Deseja iniciar o teste com Nmap? [S/N] " opc

if [ $opc = S ]||[ $opc = s ]; then
	clear
else
	exit
fi

# R (2):
sudo nmap -T4 -A -v 147.79.105.89

sudo nmap -T4 -A -v 89.116.213.54

sudo nmap -T4 -A -v 91.108.127.69

sudo nmap -T4 -A -v 34.120.251.119

# E:
sudo nmap -T4 -A -v 45.79.59.158

sudo nmap -T4 -A -v 34.102.239.211

# S:
sudo nmap -T4 -A -v 172.67.221.192

sudo nmap -T4 -A -v 104.21.86.163

clear

echo "Operação Concluída com Êxito!"
