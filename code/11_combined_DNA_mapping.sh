#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J combined_DNA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# Commands

# ID of bins with completeness>25% and contamination<10% 
good_bins=(1 2 4 6 8 11 12 14 15 17 18 19 20 24 25 26)

# File paths
DNA_path="/home/karsva/Genome_Analysis/data/raw_data/DNA_trimmed"
result_path="/home/karsva/Genome_Analysis/data/analysis_results"

# For-loop that iteratively parses through each bin

for i in "${good_bins[@]}"
do
	# index bin
	bwa index /home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa
	
	# pipeline performing DNA mapping for site D1
        bwa mem -t 2 ${result_path}/05_binning/combined_bins/bin_$i.fa \
        ${DNA_path}/site_D1_DNA_1.paired.trimmed.fastq.gz \
        ${DNA_path}/site_D1_DNA_2.paired.trimmed.fastq.gz \
        | samtools view -b - | samtools sort -@ 2 - \
        -o ${result_path}/11_DNA_mapping/site_D1/bin_${i}_site_D1_DNA.bam
        
        # pipeline performing DNA mapping for site D3
        bwa mem -t 2 ${result_path}/05_binning/combined_bins/bin_$i.fa \
        ${DNA_path}/site_D3_DNA_1.paired.trimmed.fastq.gz \
        ${DNA_path}/site_D3_DNA_2.paired.trimmed.fastq.gz \
        | samtools view -b - | samtools sort -@ 2 - \
        -o ${result_path}/11_DNA_mapping/site_D3/bin_${i}_site_D3_DNA.bam

done
