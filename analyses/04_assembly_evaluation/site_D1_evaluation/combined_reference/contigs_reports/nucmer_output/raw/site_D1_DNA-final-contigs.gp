set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/combined_reference/contigs_reports/nucmer_output/raw/site_D1_DNA-final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "9000000" 9000000, \
 "18000000" 18000000, \
 "27000000" 27000000, \
 "36000000" 36000000, \
 "45000000" 45000000, \
 "54000000" 54000000, \
 "63000000" 63000000, \
 "72000000" 72000000, \
 "" 78837296 \
)
set ytics ( \
 "0" 0, \
 "20000000" 20000000, \
 "40000000" 40000000, \
 "60000000" 60000000, \
 "80000000" 80000000, \
 "" 90052867 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:78837296]
set yrange [1:90052867]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/combined_reference/contigs_reports/nucmer_output/raw/site_D1_DNA-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation/combined_reference/contigs_reports/nucmer_output/raw/site_D1_DNA-final-contigs.rplot" title "REV" w lp ls 2
