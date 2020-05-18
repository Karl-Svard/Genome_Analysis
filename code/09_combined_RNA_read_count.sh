#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J combined_RNA_read_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

# Commands 

# ID of bins to analyze from RNA mapping
bins=(1 2 4 6 8 11 12 14 15 17 18 19 20 24 25 26)

# Save the base filepath as a variable
path="/home/karsva/Genome_Analysis/data/analysis_results"


# For loop that iteratively parses through each mapped bin

for i in "${bins[@]}"
do
	htseq-count -f bam -r pos -t CDS -i ID -s no \
	$path/08_RNA_mapping/combined/site_D1_transcript/bin_${i}_site_D1_RNA.bam \
	<(sed '/##FASTA/,$d' $path/07_annotation/combined/bin_$i/bin_$i.gff) \
	> $path/09_RNA_read_counting/combined/site_D1/bin_${i}_D1_read_count.out
	
	htseq-count -f bam -r pos -t CDS -i ID -s no \
	$path/08_RNA_mapping/combined/site_D3_transcript/bin_${i}_site_D3_RNA.bam \
	<(sed '/##FASTA/,$d' $path/07_annotation/combined/bin_$i/bin_$i.gff) \
	> $path/09_RNA_read_counting/combined/site_D3/bin_${i}_D3_read_count.out

done
