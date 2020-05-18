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
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/site_D1 \
/home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D1_bins \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/plots/site_D1_plot

checkm bin_qa_plot -x fa \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/site_D3 \
/home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D3_bins \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/plots/site_D3_plot

