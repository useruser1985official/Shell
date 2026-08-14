#!/bin/bash

if [ -f /etc/apt/sources.list.d/google-chrome.sources ]; then
	sudo rm /etc/apt/sources.list.d/google-chrome.sources
fi

if [ -f /etc/apt/sources.list.d/google-chrome.list ]; then
	echo "Arquivo de Atualização do Chrome Inalterado!"
else
	sudo rm -f /etc/apt/sources.list.d/google-chrome.list

	sudo rm -f /etc/apt/trusted.gpg.d/google-chrome.gpg

	sudo rm -rf /etc/apt/keyrings

	sudo mkdir -p /etc/apt/keyrings

	curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /etc/apt/keyrings/google-chrome.gpg

	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

	echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
fi

clear

echo "Repositórios do Docker Corrigidos com Êxito!"