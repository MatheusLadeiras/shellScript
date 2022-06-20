#!/bin/bash

listing=$(echo lsblk)

$listing

echo "Deseja desmontar um dos dispositivos(S/N)?" 
read -r RESP

case $RESP in
	S|s) echo "Sim";;
        N|n) exit;;           
esac 

while true
do
	echo "Qual dispositivo você quer desmontar?"
	read -r DEVICE
	umount -l /dev/$DEVICE
	
	echo "Deseja desmontar outro dispositivo(S/N)?" 
	read -r RESP
	
	case $RESP in
	    S|s) echo "Sim2";;
            N|n) exit;;           
	esac 
done

