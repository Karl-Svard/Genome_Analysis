#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J Multi_QC_summary
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load MultiQC/1.8

# Commands. Run the D1 and D3 results separately.
multiqc -n D1_htseq_report.html \
-o /home/karsva/Genome_Analysis/data/analysis_results/09_RNA_read_counting/combined/multi_qc \
/home/karsva/Genome_Analysis/analyses/09_RNA_read_counting/combined/site_D1

multiqc -n D3_htseq_report.html \
-o /home/karsva/Genome_Analysis/data/analysis_results/09_RNA_read_counting/combined/multi_qc \
/home/karsva/Genome_Analysis/analyses/09_RNA_read_counting/combined/site_D3

