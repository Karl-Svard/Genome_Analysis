#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J Quality control
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC/0.11.8

# Commands
fastqc -f fastq -t 2 \
/home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/*.gz \
-o /home/karsva/Genome_Analysis/analyses/02_quality_control/DNA_trimmed_QC 
