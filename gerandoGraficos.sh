#!/bin/bash

echo "REAL
USER
KERNEL
MEM" > a

#Gerando arquivo com dados dos tempos de execução
paste a msemThreads.py.txt musandoThreads.py.txt | sed '$d' > dados

#Gerando gráfico dos tempos de execução
gnuplot < graficosTempos.plt

#Gerando arquivo com dados do uso de memória
paste a msemThreads.py.txt musandoThreads.py.txt | sed '1,3d' > dados

#Gerando gráfico de uso de memória
gnuplot < graficosMemoria.plt

#removendo arquivos
rm dadossemThreads.py.txt dadosusandoThreads.py.txt semThreads.py.txt usandoThreads.py.txt
rm msemThreads.py.txt musandoThreads.py.txt a dados
