#!/bin/bash

jog=0
comp=$[($RANDOM % 9) + 1]
tent=0

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "Vou pensar em um número entre 1 e 9! Tente adivinhar!"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

while [ $jog -ne $comp ]; do
	tent=$[$tent + 1]

	read -p "Em que número eu pensei? " jog
	echo
       	echo -n "Processando..."
	sleep 5
	echo
	echo

	if [ $jog -eq $comp ]; then
		echo "Parabéns, você acertou! Pensei realmente no número $jog."
	elif [ $jog -lt $comp ]; then
		echo "Você errou, eu pensei num número maior que $jog."
	else
		echo "Você errou, eu pensei num número menor que $jog."
	fi
done

echo "Foram $tent tentativas até acertar."
