#!/bin/bash




#########################################################################
# 									#
# Nome: Relatório da Maquina.sh						#
# Autor: Igor Rodrigues Cardoso						#
#									#
########################################################################


KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(/cat /proc/cpuinfo |grep "model name"|wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr (cat /proc/meminfo |grep Memtotal|tr  -d ' '|cut -d: f2|tr -d kB)/1024) #Em Megabytes
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear

echo "=================================================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "=================================================================="
echo
echo "Versão do Kernel: $KERNEL"
echo
echo "CPUs: "
echo "Quantidade de CPUs/Core: $CPUNO"
echo
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições"
echo "$FILESYS"
echo
echo "=================================================================="

 
