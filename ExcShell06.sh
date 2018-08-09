#!/bin/bash


#################################################
#						#
# Exercício 06: Operação de dois valores	#
#						#
# Nome: Igor Rodrigues Cardoso			#
#################################################

read -p "Informe o valor 01: " VALOR01
read -p "Informe o valor 02: " VALOR02


#Condição se algum dos valores é nulo
if [ ! $VALOR01 ] || [ ! $VALOR02 ]
then
	echo "Valores nulos!"
	exit 1
fi

echo
echo "Escolha uma opção: "
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
echo "Q - Sair"
echo
echo
read -p "Opção: " OPCAO
echo


case $OPCAO in
	1)
		OPER="+"
		;;
	2)	OPER="-"
		;;
	3)
		if [ $VALOR01 -eq 0 -o $VALOR02 -eq 0 ]
		then
			echo "Um valor 0 não pode ser utilizado em produto!"
			exit 1
		fi
		OPER="*"
		;;
	4)
		if [ $VALOR01 -eq 0 -o $VALOR02 -eq 0 ]
		then
			echo "Um valor 0 não pode ser utilizado em divisão"
			exit 1
		fi
		if [ $(expr $VALOR01 % $VALOR02) -ne 0 ]
		then
			echo "Divisão com Resto = $(expr $VALOR01 % $VALOR02)"
		else
			echo "Divisão exata!"
		fi
		echo
		OPER="/"
		;;
	[Qq])
		echo "Saindo..."
		exit 1
		;;
	*)

		echo "Opção invalida!"
		exit 1
		;;
esac

echo "$VALOR01 $OPER $VALOR02 = $(expr $VALOR01 "$OPER" $VALOR02)"




		

		

	




