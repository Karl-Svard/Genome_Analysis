#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J DNA_RPKM_calc
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules



# Pipeline for calculating RPKM-values. The R script listens to 
# stdin to chose which site to work with, and prints output to stdout.

path="/home/karsva/Genome_Analysis/code/r_scripts"
result_path="/home/karsva/Genome_Analysis/analyses/12_bin_abundance"

echo "D1" | Rscript ${path}/DNA_RPKM.r > ${result_path}/D1_bin_abundance.tsv
echo "D3" | Rscript ${path}/DNA_RPKM.r > ${result_path}/D3_bin_abundance.tsv
