#!/bin/bash

arquivo=$(cat Nomes.txt)

for line in $arquivo
do
  echo "The name has been read"
  mkdir "${line}"
done

