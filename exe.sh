#!/bin/bash

echo "Digite o nome do arquivo a ser executado: "
read file

for ((n=$1; n<=$2; n++)); do /usr/bin/time --format="%E %U %S %M" ./$file 2>> times.txt; done
