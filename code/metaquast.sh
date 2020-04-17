#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J Assembly_Evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools 
module load quast

# Commands
metaquast.py -t 2 \
/home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D1/site_D1_DNA.final.contigs.fa \
-o /home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D1_evaluation \
-1 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D1_DNA_1.paired.trimmed.fastq.gz \
-2 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D1_DNA_2.paired.trimmed.fastq.gz

metaquast.py -t 2 \
/home/karsva/Genome_Analysis/data/analysis_results/03_assembly/site_D3/site_D3_DNA.final.contigs.fa \
-o /home/karsva/Genome_Analysis/analyses/04_assembly_evaluation/site_D3_evaluation \
-1 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D3_DNA_1.paired.trimmed.fastq.gz \
-2 /home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed/site_D3_DNA_2.paired.trimmed.fastq.gz
 
