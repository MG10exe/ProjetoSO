#!/bin/bash

echo "REAL
USER
KERNEL
MEM" > a

#Gerando arquivo com dados dos tempos de execução
paste a mu2.sh.txt mu.sh.txt | sed '$d' > hhhh

#Gerando gráfico dos tempos de execução
gnuplot < grafico.plt

#Gerando arquivo com dados do uso de memória
paste a mu2.sh.txt mu.sh.txt | sed '1,3d' > hhhh

gnuplot < grafico2.plt
