reset

set title "Tempos de execução médio entre os cenários 1 e 2"
set datafile separator "        "
set key left
set grid

set style data histogram
set style histogram cluster gap 2
set style fill solid
set style fill transparent solid 1 border lt -1
set boxwidth 1.5

set ylabel "Tempo em segundos" offset 1.5,0
set yrange [0:59]
set xlabel "Recursos"

set terminal 'png' size 800,600
set output 'tempoExeCenarios.png'

plot 'dados' using 2:xtic(1) title "Cenário 1", \
'dados' using 3:xtic(1) title "Cenário 2"
