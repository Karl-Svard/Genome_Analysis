#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J DNA_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools 
module load megahit

# Commands
megahit -t 2 --kmin-1pass --k-min 65 --k-max 105 --k-step 10 \
-1 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D1_DNA_1.paired.trimmed.fastq.gz \
-2 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D1_DNA_2.paired.trimmed.fastq.gz \
-o /home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D1

megahit -t 2 --kmin-1pass --k-min 65 --k-max 105 --k-step 10 \
-1 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D3_DNA_1.paired.trimmed.fastq.gz \
-2 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D3_DNA_2.paired.trimmed.fastq.gz \
-o /home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D3
 
