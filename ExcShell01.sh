#!/bin/bash



#################################################################################
#                                                                               #
#                                                                               #
# Excercício 01: Soma de Valores (SomaValores.sh)                               #
# Autor: Igor Rodrigues Cardoso                                                 #
#                                                                               #
#################################################################################


read -p "Informe o Valor 1: " VALOR1
read -p "Informe o Valor 2: " VALOR2

echo
echo "Soma dos Valores ($VALOR1 + $VALOR2): $(expr $VALOR1 + $VALOR2)"


