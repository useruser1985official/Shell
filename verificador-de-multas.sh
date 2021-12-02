#!/bin/bash

read -p "Qual é a velocidade atual do carro? " vel

if [ $vel -gt 80 ]; then
	echo "Você foi multado. Excedeu o limite permitido que é de 80 Km/h."

	exc=$[$vel - 80]

	multa=$[$exc * 7]

	echo "Sua multa é de R\$$multa,00."
fi

echo

echo "Tenha um bom dia. Dirija com segurança."