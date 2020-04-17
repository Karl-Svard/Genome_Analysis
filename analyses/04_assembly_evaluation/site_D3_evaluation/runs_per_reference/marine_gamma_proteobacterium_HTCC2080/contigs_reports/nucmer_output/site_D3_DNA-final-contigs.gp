set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/marine_gamma_proteobacterium_HTCC2080/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "3200000" 3200000, \
 "" 3576081 \
)
set ytics ( \
 "0" 0, \
 "3000" 3000, \
 "6000" 6000, \
 "9000" 9000, \
 "12000" 12000, \
 "15000" 15000, \
 "18000" 18000, \
 "21000" 21000, \
 "" 22083 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3576081]
set yrange [1:22083]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/marine_gamma_proteobacterium_HTCC2080/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/marine_gamma_proteobacterium_HTCC2080/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.rplot" title "REV" w lp ls 2
