#!/bin/bash

meses=("Janeiro" "Fevereiro" "Março" "Abril" "Maio" "Junho" "Julho" "Agosto" "Setembro" "Outubro" "Novembro" "Dezembro")

semana=("Domingo" "Segunda-Feira" "Terça-Feira" "Quarta-Feira" "Quinta-Feira" "Sexta-Feira" "Sábado")

dia=`date +%d`

mes=`date +%m`

ano=`date +%Y`

ds=`date +%w`

hora=`date +%H:%M:%S`

echo "Hoje é $dia de ${meses[$mes - 1]} de $ano. ${semana[$ds]}."

echo "A hora nesse momento é $hora."