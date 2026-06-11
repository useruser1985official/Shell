#!/bin/bash

read -p "Digite o primeiro número: " num1

read -p "Digite o segundo número: " num2

echo

if [ $num1 -gt $num2 ]; then
	echo "O número $num1 é maior que o $num2."
elif [ $num1 -lt $num2 ]; then
	echo "O número $num1 é menor que o $num2."
else
	echo "Os números $num1 e $num2 são iguais."
fi