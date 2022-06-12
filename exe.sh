#!/bin/bash

echo "Digite o nome do arquivo a ser executado: "
read file

for ((n=$1; n<=$2; n++)); do ./$file; done
