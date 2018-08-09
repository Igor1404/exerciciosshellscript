#!/bin/bash





################################################

##Exercício 09 - Monitoramento FS



################################################




EMAIL=igor.cardoso.92@gmail.com
LIMITE=15
ARQTEMP=/tmp/monitora-particao.tmp
LOG=/var/log/scripts/$(basename $0).log


for loop in $( df -h |grep sda|tr -s " " |tr -s ' ' ':' )
do

	USO=$( echo $loop|cut -d":" -f6 )
	if [ $USO -ge $LIMITE ]
	then
		PARTICAO=$(echo $loop|cut -d":" -f6)
		

		#GERA E ENVIA O EMAIL
		echo "Atenção! A partição $PARTICAO esta com uso acima do limite configurado" >> $ARQ_TEMP
		echo >> $ARQ_TEMP
		echo >> "Limite: $LIMITE%" >> $ARQ_TEMP
		echo >> $ARQ_TEMP
		df -h $PARTICAO >> $ARQ_TEMP

		mail -s "[$0] - Verificar Partição $PARTICAO " $EMAIL >> $ARQ_TEMP

		#GERA LOG
		echo "$(date "+%d/%m/Y %H:%M") - Partição $PARTICAO - Uso $USO%" >> $LOG
		rm -f $ARQ_TEMP 


	fi
done









 


 
