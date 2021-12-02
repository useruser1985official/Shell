#!/bin/bash

read -p "Informe um número de 0 a 9999: " num

u=$[$num / 1 % 10]

d=$[$num / 10 % 10]

c=$[$num / 100 % 10]

m=$[$num / 1000 % 10]

echo

echo "Unidade: $u"

echo "Dezena: $d"

echo "Centena: $c"

echo "Milhar: $m"