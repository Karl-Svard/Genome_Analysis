#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J RNA_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools 
module load trimmomatic

# Commands
trimmomatic PE -threads 2 -phred33 \
/home/karsva/Genome_Analysis/data/raw_data/RNA_untrimmed/site_D1_RNA_1.fastq.gz \
/home/karsva/Genome_Analysis/data/raw_data/RNA_untrimmed/site_D1_RNA_2.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_1.paired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_1.unpaired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_2.paired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_2.unpaired.trimmed.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

trimmomatic PE -threads 2 -phred33 \
/home/karsva/Genome_Analysis/data/raw_data/RNA_untrimmed/site_D3_RNA_1.fastq.gz \
/home/karsva/Genome_Analysis/data/raw_data/RNA_untrimmed/site_D3_RNA_2.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_1.paired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_1.unpaired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_2.paired.trimmed.fastq.gz \
/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_2.unpaired.trimmed.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36






