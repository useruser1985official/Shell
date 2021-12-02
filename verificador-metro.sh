#!/bin/bash

read -p "Digite o valor em metros: " met

cent=$[$met * 100]

mili=$[$met * 1000]

echo

echo "$met M equivalente à $cent CM e a $mili MM."