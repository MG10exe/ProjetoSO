reset

set title "Uso médio de memória"
set datafile separator "        "
set key left
set grid

set style data histogram
set style histogram cluster gap 2
set style fill solid
set style fill transparent solid 1 border lt -1
set boxwidth 1.5

set ylabel "Quantidade de memória" offset 1.5,0
set yrange [0:]
set xlabel "Recursos"

set terminal 'png' size 800,600
set output 'usoMemCenarios.png'

plot 'dados' using 2:xtic(1) title "Cenário 1", \
'dados' using 3:xtic(1) title "Cenário 2"
