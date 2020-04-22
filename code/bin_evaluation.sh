#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J Bin_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load CheckM/1.0.12

# Commands
checkm lineage_wf -t 4 -x fa --reduced_tree \
/home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D1_bins \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/site_D1

checkm lineage_wf -t 4 -x fa --reduced_tree \
/home/karsva/Genome_Analysis/data/analysis_results/05_binning/site_D3_bins \
/home/karsva/Genome_Analysis/analyses/06_bin_evaluation/site_D3


