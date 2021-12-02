#!/bin/bash

read -p "Digite um número para iniciar a contagem: " ini

read -p "Digite um número para finalizar a contagem: " fin

read -p "Digite um número para definir o passo: " pas

clear

echo "-----"

for i in $(seq $ini $pas $fin); do
	echo $i
done

echo "-----"