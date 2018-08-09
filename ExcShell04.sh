#!/bin/bash

#########################################################################
#									#
#Exercício 04: Hora Atual 						#
#									#
#Descrição: Exibe a Hora atual e dá bom dia, boa tarde e boa noite	#
#									#
#########################################################################

clear

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)



#Utilizando o if para determinar as condições de cada hora



if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
	echo "Bom dia!"

elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
	echo "Boa tarde!"

else
	echo "Boa noite!"
fi

#IF para definir o AM/PM
if [ $HORA -ge 12 ]
then
	AMPM=PM
else
	AMPM=AM
fi


#If para reduzir a hora

if [ $HORA -gt 12 ]
then
	HORA=$(expr $HORA - 12)
fi

echo
echo "Hora atual: $HORA:$MIN $AMPM"



