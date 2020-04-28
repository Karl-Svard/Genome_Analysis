#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J combined_bin_plot
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load CheckM/1.0.12

# Commands
checkm bin_qa_plot -x fa \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/combined \
/home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/plots/combined_plot
