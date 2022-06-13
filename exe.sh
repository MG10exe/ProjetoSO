#!/bin/bash

echo "Digite o nome do programa a ser executado: "
read file

echo "Quantas vezes o programa será executado? "
read num

n=1
for (($n; n<=$num; n++)); do /usr/bin/time --format="%E %U %S %M" ./$file 2>> $file.txt; done

#calculando media
tr ':' ' ' < $file.txt > dados$file.txt

#somando os tempos de execuçao
real=$(awk '{print $2}' dados$file.txt | paste -sd+ | bc)
user=$(awk '{print $3}' dados$file.txt | paste -sd+ | bc)
kernel=$(awk '{print $4}' dados$file.txt | paste -sd+ | bc)

#somando a quantidade de memoria
mem=$(awk '{print $5}' dados$file.txt | paste -sd+ | bc)

#contando numero de linhas
nLinhas=$(wc --lines < dados$file.txt)

#calculando a media
echo "$( bc <<< "scale=2;${real} / ${nLinhas}" )" >> m$file.txt
echo "$( bc <<< "scale=2;${user} / ${nLinhas}" )" >> m$file.txt
echo "$( bc <<< "scale=2;${kernel} / ${nLinhas}" )" >> m$file.txt
echo "$( bc <<< "scale=2;${mem} / ${nLinhas}" )" >> m$file.txt
