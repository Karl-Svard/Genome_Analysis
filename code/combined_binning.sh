#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J combined_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools 
module load MetaBat/2.12.1 

# Commands for binning the contigs from the combined assembly.
metabat2 -t 2 \
-i /home/karsva/Genome_Analysis/data/analysis_results/03_assembly/combined_assembly/combined.final.contigs.fa \
-o /home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin


