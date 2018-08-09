#!/bin/bash






##===========================================##
#
#
#Exercício 08: Listar todos os usuários do sistema com informações
#
##===========================================##


#UIDs utilizados para usuários comuns

clear
MIN_UID=$(grep "UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)


#OLDIFS=$IFS
#IFS=$'\n'

#Criando o cabeçalho de saída

echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"


for i in $(cat /etc/passwd)
do
	USERID=$(echo $i | cut -d":" -f3)
	if [ $USERID -ge $-MIN_UID -a $USERID -le $-MAX_UID ]
	then
		USER=$(echo $i | cut -d":" -f1)
		USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d":" -f6)
	fi


done



















