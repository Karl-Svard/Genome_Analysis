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

# Commands. Run the DNA and RNA results separately.
multiqc -n DNA_multiqc_report.html \
-o /home/karsva/Genome_Analysis/analyses/02_quality_control/DNA_multi_QC \
/home/karsva/Genome_Analysis/analyses/02_quality_control/DNA_trimmed_QC

multiqc -n RNA_multiqc_report.html \
-o /home/karsva/Genome_Analysis/analyses/02_quality_control/RNA_multi_QC \
/home/karsva/Genome_Analysis/analyses/02_quality_control/RNA_untrimmed_QC \
/home/karsva/Genome_Analysis/analyses/02_quality_control/RNA_trimmed_QC 

