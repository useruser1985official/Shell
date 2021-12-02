#!/bin/bash

menu() {
	echo "Minha Agenda Telefônica"

	echo

	echo "1 - Adicionar Contato"
	echo "2 - Consultar Todos os Contatos"
	echo "3 - Buscar por Nome"
	echo "0 - Sair"

	echo

	read -p "Digite Aqui sua Opção: " opc

	case $opc in
		1)
			clear; adicionar;;
		2)
			clear; consultar;;
		3)
			clear; buscar;;
		0)
			exit;;
	esac

	echo "Opção Inválida!"

	echo

	read -p "Pressione qualquer Tecla para Tentar Novamente!"

	clear

	menu
}

adicionar() {
	echo "Minha Agenda Telefônica"

	echo

	read -p "Digite o Nome do Contato: " nome

	read -p "Digite o Número de $nome: " tel

	echo

	echo "$nome - $tel.">>$HOME/Área\ de\ Trabalho/agenda.txt

	echo "Ok, Adicionado à Agenda!"

	read -p "Pressione qualquer Tecla pra Voltar ao Menu!"

	clear

	menu
}

consultar() {
	echo "Minha Agenda Telefônica"

	echo

	cat $HOME/Área\ de\ Trabalho/agenda.txt

	echo

	read -p "Pressione qualquer Tecla pra Voltar ao Menu!"

	clear

	menu
}

buscar() {
	read -p "Digite o Nome do Contato: " contato

	echo

	grep -i $contato $HOME/Área\ de\ Trabalho/agenda.txt

	if [ $? -ne 0 ]; then
		echo "Contato não Encontrado!"
	fi

	echo

	read -p "Pressione qualquer Tecla pra Voltar ao Menu!"

	clear

	menu
}

menu