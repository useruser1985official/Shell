#!/bin/bash

tabuada() {
	read -p "Digite um número para ver sua tabuada: " num

	echo

	echo "Tabuada de $num:"

	echo

	echo "-----------------"

	for t in $(seq 1 1 10); do
		res=$[$num * $t]

		echo "$num x $t = $res"
	done

	echo "-----------------"

	read -p "Deseja digitar outros números? [S/N] " opc

	if [ $opc = s ]||[ $opc = S ]; then
		clear

		tabuada
	fi
}

tabuada