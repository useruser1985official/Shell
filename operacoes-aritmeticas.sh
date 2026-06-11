#!/bin/bash

read -p "Digite o primeiro número: " num1

read -p "Digite o segundo número: " num2

clear

soma=$[$num1 + $num2]

subs=$[$num1 - $num2]

mult=$[$num1 * $num2]

divi=$[$num1 / $num2]

rest=$[$num1 % $num2]

echo "A soma entre $num1 e $num2 é igual à $soma."

echo "A subtração entre $num1 e $num2 é igual à $subs."

echo "A multiplicação entre $num1 e $num2 é igual à $mult."

echo "A divisão entre $num1 e $num2 é igual à $divi com resto de $rest."

echo