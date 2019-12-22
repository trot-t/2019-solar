set terminal epslatex color dashed
set output 'equations-gnuplottex-fig1.tex'
set title "повышающий преобразователь"
set xlabel "t, сек"
set ylabel "V, вольт"
set grid
unset logscale x
set xrange [0.000000e+00:1.400000e-02]
unset logscale y
set yrange [6.841230e+01:2.161226e+02]
#set xtics 1
#set x2tics 1
#set ytics 1
#set y2tics 1
set format y "%g"
set format x "%g"
plot 'boost_result.data' using 1:2 with lines lw 1 lc rgb "blue " title "$U_{in}$",\
'boost_result.data' using 3:4 with lines lw 1 lc rgb "red" title "$U_{out}$" 
