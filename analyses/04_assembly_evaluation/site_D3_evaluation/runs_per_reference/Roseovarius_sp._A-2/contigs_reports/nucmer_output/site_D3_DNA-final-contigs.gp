set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/Roseovarius_sp._A-2/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "600000" 600000, \
 "1200000" 1200000, \
 "1800000" 1800000, \
 "2400000" 2400000, \
 "3000000" 3000000, \
 "3600000" 3600000, \
 "4200000" 4200000, \
 "" 4584578 \
)
set ytics ( \
 "0" 0, \
 "900" 900, \
 "1800" 1800, \
 "2700" 2700, \
 "3600" 3600, \
 "4500" 4500, \
 "5400" 5400, \
 "6300" 6300, \
 "7200" 7200, \
 "" 8091 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4584578]
set yrange [1:8091]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/Roseovarius_sp._A-2/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation/runs_per_reference/Roseovarius_sp._A-2/contigs_reports/nucmer_output/site_D3_DNA-final-contigs.rplot" title "REV" w lp ls 2
