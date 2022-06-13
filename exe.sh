#!/bin/bash

echo "Digite o nome do programa a ser executado: "
read file

echo "Quantas vezes o programa será executado? "
read num

n=1
for (($n; n<=$num; n++)); do /usr/bin/time --format="%E %U %S %M" ./$file 2>> $file.txt; done
