#!/bin/bash




#############################################################



#Exercício 10: Monitoramento de SWAP


############################################################




EMAIL=igor.cardoso.92@gmail.com
LIMITE_LOG=
LIMITE_EMAIL=
ARQ_TEMP=

USO=$(free -m|grep Swap|tr -s " " |cut -d -f3)
TOTAL=$(free -m|grep Swap|tr -s " " |cut -d " " -f2)


#PERC=$(expr $USO / $TOTAL \ *100)
PERC=70


if [ $PERC -ge $LIMITE_LOG ]
then
	logger -p local7.warn -t [MonitoraSwap] "Uso do Swap =$PERC%"
	if [ $PERC -ge $LIMITE_LOG ]
	then
		echo -e "Atenção: O uso do Swap está acima do limite. \n " >>$ARQ_TEMP
		echo "Limite = $LIMITE_EMAIL%" >> $ARQ_TEMP
		echo -e "Valor Atual = $PERC%\n" >> $ARQ_TEMP
		free -m >> $AR_TEMP
		mail -s "[basename $0] Uso de Swap Acima de limite $LIMITE_EMAIL" $EMAIL < $ARQ_TEMP
	fi
fi

rm -f $ARQ_TEMP






