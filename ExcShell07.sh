#!/bin/bash



###############################################################

#Aula 07: Exemplo for

###############################################################

clear 
read -p "Informe o início da sequência: " INICIO
read -p "Informe o final da sequência: " FIM


for i in $(seq $INICIO $FIM)
do
	echo "Valor $i"
	sleep 1

done


 
