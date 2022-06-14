reset

set title "Tempo de execuçao medio entre os cenarios 1 e 2"
set datafile separator "        "
set key left
set grid

set style data histogram
set style histogram cluster gap 2
set style fill solid
set boxwidth 1.5

set ylabel "Quantidade de memória" offset 1.5,0
set yrange [0:]
set xlabel "Recursos"

set terminal 'png' size 800,600
set output 'usoMemCenarios.png'

plot 'hhhh' using 2:xtic(1) title "cenario 1", \
'hhhh' using 3:xtic(1) title "cenario 2"
