#!/bin/bash

#########################################################
#							#
#Exercício 05: Criando um script para gerar backup.	#
#Nome: Igor Rodrigues Cardoso				#
#							#
#							#
#							#
#							#
#							#
#							#
#							#
#########################################################

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
	echo "Criando Diretório $DIRDEST..."
	mkdir -p $DIRDEST
fi


DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ] #TESTA SE A VARIÁVEL É NULA.
then
	echo "FOi gerado um backup do diretorio $HOME nos ultimos 7 dias."
	echo -n "Deseja continuar? (N/s): "
	read -n1 CONT
	echo
	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup não realizado!"
		exit 1
	elif [ "$CONT" = S -o $CONT = s]
	then
		echo "Será criado mais um backup!"
	else
		echo "Opção Inválida"
		exit 2
	fi

fi

echo "Criando backup..."
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"

#===============================================###

#tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$Home/Google Drive"
#--exclude=$HOME/VIdeos --exclude="$DIRDEST" "$HOME"/* > /dev/null
#echo Backup \""$ARQ"\" foi criado realizado com sucesso em $DIRDEST".

#===============================================###
