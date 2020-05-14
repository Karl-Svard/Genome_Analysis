#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J combined_RNA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.10

# Commands

# ID of bins with completeness>25% and contamination<10% 
good_bins=(1 2 4 6 8 11 12 14 15 17 18 19 20 24 25 26)


# For-loop that iteratively parses through each bin

for i in "${good_bins[@]}"
do
	# index bin
	bwa index /home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa
	
	# pipelie performing RNA mapping for site D1
	bwa mem -t 2 /home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa \
	/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_1.paired.trimmed.fastq.gz \
	/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D1_RNA_2.paired.trimmed.fastq.gz \
	| samtools view -b - | samtools sort -@ 2 - \
	-o /home/karsva/Genome_Analysis/data/analysis_results/08_RNA_mapping/combined/site_D1_transcript/bin_${i}_site_D1_RNA.bam
	
	# pipeline performing RNA mapping for site D3
	bwa mem -t 2 /home/karsva/Genome_Analysis/data/analysis_results/05_binning/combined_bins/bin_$i.fa \
	/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_1.paired.trimmed.fastq.gz \
	/home/karsva/Genome_Analysis/data/analysis_results/01_preprocessing/RNA_trimmed/site_D3_RNA_2.paired.trimmed.fastq.gz \
	| samtools view -b - | samtools sort -@ 2 - \
	-o /home/karsva/Genome_Analysis/data/analysis_results/08_RNA_mapping/combined/site_D3_transcript/bin_${i}_site_D3_RNA.bam

done
