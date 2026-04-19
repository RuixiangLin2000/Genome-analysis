#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -p pelle
#SBATCH -c 2
#SBATCH --mem=96G
#SBATCH -t 24:00:00
#SBATCH -J flye_chr3
#SBATCH --mail-type=ALL
#SBATCH --output=%x.%j.out

module load Flye/2.9.6-GCC-13.3.0

flye \
  --nano-raw /home/ruixi/Genome-analysis/raw_data/genomics_chr3/chr3_clean_nanopore.fq.gz \
  --out-dir /home/ruixi/Genome-analysis/analyses/02_assembly/flye_chr3 \
  --threads 2 \

