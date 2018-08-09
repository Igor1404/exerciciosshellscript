#!/bin/bash


#########################################################################
#									#
# Nome: Excercício 03 - Relatório de Usuário.				#
# Autor: Igor Rodrigues Cardoso						#
#########################################################################





#ls /home/$1 > /dev/null 2>&1 || echo "Usuário Inexistente"
#ls /home/$1 > /dev/null 2>&1 || exit 1



ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

USERID=$(grep $1 /etc/passwd|cut -d":" -f3)
DESC=$(grep $1 /etc/passwd|cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1|cut -f1)


clear
echo "==================================================================="
echo "Relatório do Usuário: $1"
echo
echo "UID: $USERID"
echo
echo "Nome ou descrição: $DESC"
echo "Total Usado no /home/$1: $USOHOME"
echo
echo "Último Login: "
lastlog -u $1
echo "==================================================================="
exit 0
