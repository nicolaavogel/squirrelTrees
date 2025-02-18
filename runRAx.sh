#!/bin/bash
#SBATCH --job-name=raxml_boot         # Job name
#SBATCH --output=raxml_boot.out    # Standard output and error log (%j is replaced by job ID)
#SBATCH --error=raxml_boot.err     # Standard error log
#SBATCH --ntasks=4                     # Number of tasks (usually 1 for single-node jobs)
#SBATCH --cpus-per-task=20              # Number of CPU cores per task (adjust as needed)
#SBATCH --mem=8G                       # Memory per node (adjust as needed)
#SBATCH --time=24:00:00                # Wall time (HH:MM:SS format)

raxmlHPC-PTHREADS -s cytoCH.aln.fa -m GTRCATX -n cytoChrm -p 76 -T 40 -o NC_026705_CYTB_gene_Cynomys_leucurus_mitochondrion -# 1000
raxmlHPC-PTHREADS -s sqirARich.aln.fa -m GTRCATX -n sqirARich -p 76 -T 40 -o NC_027283.1_Spermophilus_dauricus_mitochondrion__complete_genome -# 1000
raxmlHPC-PTHREADS -s sqirASC16.aln.fa -m GTRCATX -n sqirASC16 -p 76 -T 40 -o NC_027283.1_Spermophilus_dauricus_mitochondrion__complete_genome -# 1000
raxmlHPC-PTHREADS -s sqirAPyri.aln.fa -m GTRCATX -n sqirAPyri -p 76 -T 40 -o NC_027283.1_Spermophilus_dauricus_mitochondrion__complete_genome -# 1000
