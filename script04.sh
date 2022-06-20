#!/bin/bash

now=$(date +"%d_%m_%Y") 
weekday=$(date +"%A")
locate=$(lsblk | grep "USB" | cut -d' ' -f1 | cut -c 7-10 ) 
mount=$(sudo mount /dev/$locate /home/matheus/USB) # mount tem que pegar o sdb, não o MOUNTPOINT - DONE
target=$(mount | grep 'media' | cut -d' ' -f3 | head -1) 

$mount

tar -cvzf backupFrom$now.tar.gz $target 
 
backup=$(rsync -avz backupFrom$now.tar.gz /home/matheus/scripts/Backups/$weekday) # O erro fala de seending na linha 16.
$backup
#Erro atual: A linha em que o backup está presente sempre será referenciada como tendo um erro "linha 17: sending: comando não encontrado"
#Aparentemente a causa é que o server remoto não tem o rsync instalado
