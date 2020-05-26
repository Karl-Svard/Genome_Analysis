#!/usr/bin/Rscript
# Script that performs RPKM calculations on DNA mapped bins.

# Takes input from stdin about which site should be looked at ("D1" or "D3")
input<-file('stdin')
site <- readLines(input, n=1)

# List of bin IDs with completeness over 70% and contamination below 5%.
ID <- c(1, 2, 4, 11, 12, 15, 19, 24, 26)

# Pre-allocate vectors for the data frame
Bin_name <- character(length(ID))
Length <- integer(length(ID))
Mapped_reads <- integer(length(ID))
Total_reads <- integer(length(ID))
RPKM <- double(length(ID))

x <- 1
# Iteratively parse through each mapped bin from the site
for (i in ID){
  # Path of the file
  path <- paste("/home/karsva/Genome_Analysis/data/analysis_results",
                "/11_DNA_mapping/site_", site, "/bin_", i, "_", site, 
		"_DNA_stats.tsv",sep = "")
  # Read in file
  stats <- read.table(file = path, sep = '\t', header = FALSE)
  
  # Perform calculations
  bin_length <- sum(stats$V2)
  n_mapped_reads <- sum(stats$V3)
  n_unmapped_reads <- sum(stats$V4)
  n_total_reads <- n_mapped_reads + n_unmapped_reads
  rpkm_value <- n_total_reads/((bin_length/1000)*(n_total_reads/1000000))
  
  # Add to vectors
  Bin_name[x] <- paste("Bin_",i, sep="")
  Length[x] <- bin_length
  Mapped_reads[x] <- n_mapped_reads
  Total_reads[x] <- n_total_reads
  RPKM[x] <- rpkm_value
  
  x = x + 1
}

# Create a resulting data frame
df <- data.frame(Bin_name, ID, Length, Mapped_reads, 
                   Total_reads, RPKM, stringsAsFactors=FALSE)

# Print to stdout
write.table(df, row.names=FALSE, sep="\t")


