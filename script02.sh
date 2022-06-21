#!/bin/bash
# Criar um arquivo com cada nome listado em Nomes.txt

arquivo=$(cat Nomes.txt)

for line in $arquivo
do
  echo "The name has been read"
  mkdir "${line}"
done
