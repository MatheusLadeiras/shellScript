#!/bin/bash
#Gerar log do backup e copiar para um pendrive

now=$(date +"%d_%m_%Y")
target=$(mount | grep 'media' | cut -d' ' -f3 | head -1)

tar -cvzf script.tar.gz /home/matheus/Documentos/markups-b-hero > $now.txt

cp script.tar.gz $target
