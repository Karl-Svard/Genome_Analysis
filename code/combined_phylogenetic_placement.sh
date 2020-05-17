#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J combined_phylogenetic_placement
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.svard970@gmail.com

# Load modules
module load bioinfo-tools
module load phylophlan
module load FastTree
module load usearch/5.2.32
module load muscle

# directory to store the phylophlan results
outdir="/home/karsva/Genome_Analysis/data/analysis_results/10_phylogenetic_placement"

# create the directories that phylophlan looks for:
# when you run phylophlan you specify a project name, which it looks for in the "input" directory
# in this case the project name is "metagenome"
# this is also where you should put symlinks to your input files
mkdir -p $outdir/input/combined_metagenome
mkdir -p $outdir/output
mkdir -p $outdir/data/ppaalns

# symlink phylophlan data files
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/*.bz2 $outdir/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt $outdir/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/taxcuration/ $outdir/taxcurationcd $outdir

# symlink to input files
for bin in /home/karsva/Genome_Analysis/data/analysis_results/07_annotation/combined/*
do
ln -sf $bin/*.faa $outdir/input/combined_metagenome
done

# Move to the newly created directory and run phylophlan
cd $outdir
phylophlan.py -i -t combined_metagenome --nproc 2 
