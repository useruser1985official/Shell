#!/bin/bash

read -p "Me diga um número qualquer: " num

res=$[$num % 2]

echo

if [ $res -eq 0 ]; then
	echo "O número $num é par!"
else
	echo "O número $num é ímpar!"
fi