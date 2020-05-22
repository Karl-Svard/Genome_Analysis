#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J combined_assembly_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load quast

# Commands
DNA_path = "/home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed"

metaquast.py -t 2 \
/home/karsva/Genome_Analysis/data/analysis_results/03_assembly/combined_assembly/combined.final.contigs.fa \
-o /home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/combined_evaluation \
-1 ${DNA_path}/site_D1_DNA_1.paired.trimmed.fastq.gz,${DNA_path}/site_D3_DNA_1.paired.trimmed.fastq.gz \
-2 ${DNA_path}/site_D1_DNA_2.paired.trimmed.fastq.gz,${DNA_path}/site_D3_DNA_2.paired.trimmed.fastq.gz
