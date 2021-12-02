#!/bin/bash

echo "-----------------------------------"

echo "---------------BANCO---------------"

echo "-----------------------------------"

read -p "Que valor você quer sacar? R\$" valor

total=$valor

ced=200

totCed=0

while true; do
	if [ $total -ge $ced ]; then
		total=$[$total - $ced]

		totCed=$[$totCed + 1]
	else
		if [ $totCed -gt 0 ]; then
			echo "Total de $totCed de R\$$ced,00."
		fi

		case $ced in
			200)
				ced=100;;
			100)
				ced=50;;
			50)
				ced=20;;
			20)
				ced=10;;
			10)
				ced=5;;
			5)
				ced=2;;
			2)
				ced=1;;
		esac

		totCed=0

		if [ $total -eq 0 ]; then
			break
		fi
	fi
done

echo "-----------------------------------"

echo "-------Volte sempre ao Banco-------"

echo "-----------------------------------"
