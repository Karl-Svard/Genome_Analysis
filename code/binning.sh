#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J Binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools 
module load MetaBat/2.12.1 

# Commands
metabat2 -t 2 \
-i /home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D1/site_D1_DNA.final.contigs.fa \
-o /home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D1_bins

metabat2 -t 2 \
-i /home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D3/site_D3_DNA.final.contigs.fa \
-o /home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D3_bins
