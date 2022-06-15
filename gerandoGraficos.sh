#!/bin/bash

echo "REAL
USER
KERNEL
MEM" > a

#Gerando arquivo com dados dos tempos de execução
paste a msemThreads.py.txt musandoThreads.py.txt | sed '$d' > dados

#Gerando gráfico dos tempos de execução
gnuplot < grafico.plt

#Gerando arquivo com dados do uso de memória
paste a msemThreads.py.txt musandoThreads.py.txt | sed '1,3d' > dados

gnuplot < grafico2.plt
