set terminal canvas jsdir ""
set output "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/combined_evaluation/runs_per_reference/Chromatocurvus_halotolerans/contigs_reports/nucmer_output/combined-final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "" 3910325 \
)
set ytics ( \
 "0" 0, \
 "8000" 8000, \
 "16000" 16000, \
 "24000" 24000, \
 "32000" 32000, \
 "40000" 40000, \
 "48000" 48000, \
 "56000" 56000, \
 "64000" 64000, \
 "" 71579 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3910325]
set yrange [1:71579]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/combined_evaluation/runs_per_reference/Chromatocurvus_halotolerans/contigs_reports/nucmer_output/combined-final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/combined_evaluation/runs_per_reference/Chromatocurvus_halotolerans/contigs_reports/nucmer_output/combined-final-contigs.rplot" title "REV" w lp ls 2
