#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:30:00
#SBATCH -J combined_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load prokka

# Commands

for i in {1..26}
do
	if [$i == 4] || [$i == 5] || [$i == 9] || [$i == 16]
	then
		prokka ~/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa \
		--outdir ~/Genome_Analysis/data/analysis_results/07_annotation/combined/bin_$i \
		--prefix bin_$i --force --addgenes --kingdom Archaea
	else
		prokka ~/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa \
                --outdir ~/Genome_Analysis/data/analysis_results/07_annotation/combined/bin_$i \
                --prefix bin_$i --force --addgenes
	fi
done
