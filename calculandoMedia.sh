#!/bin/bash

tr ':' ' ' < teste.txt > dados.txt

#somando os tempos de execuçao
real=$(awk '{print $2}' dados.txt | paste -sd+ | bc)
user=$(awk '{print $3}' dados.txt | paste -sd+ | bc)
kernel=$(awk '{print $4}' dados.txt | paste -sd+ | bc)

#somando a quantidade de memoria
mem=$(awk '{print $5}' dados.txt | paste -sd+ | bc)

#contando numero de linhas
nLinhas=$(wc --lines < teste.txt)

#calculando a media
echo "$( bc <<< "scale=2;${real} / ${nLinhas}" )"
echo "$( bc <<< "scale=2;${user} / ${nLinhas}" )"
echo "$( bc <<< "scale=2;${kernel} / ${nLinhas}" )"
echo "$( bc <<< "scale=2;${mem} / ${nLinhas}" )"
