set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.html"
set ytics ( \
 "0" 0, \
 "600" 600, \
 "1200" 1200, \
 "1800" 1800, \
 "2400" 2400, \
 "3000" 3000, \
 "3600" 3600, \
 "4200" 4200, \
 "4800" 4800, \
 "" 5034 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:5034]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/site_D1_DNA-final-contigs.rplot" title "REV" w lp ls 2
