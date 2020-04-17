set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Dasania_marina_DSM_21967/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "4000000" 4000000, \
 "" 4104988 \
)
set ytics ( \
 "0" 0, \
 "800" 800, \
 "1600" 1600, \
 "2400" 2400, \
 "3200" 3200, \
 "4000" 4000, \
 "4800" 4800, \
 "5600" 5600, \
 "6400" 6400, \
 "" 6880 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4104988]
set yrange [1:6880]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Dasania_marina_DSM_21967/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Dasania_marina_DSM_21967/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.rplot" title "REV" w lp ls 2
