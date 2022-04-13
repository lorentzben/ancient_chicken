#!/bin/bash

#SBATCH --partition=batch
#SBATCH --job-name=Orthofinder
#SBATCH --nodes=2
#SBATCH --ntasks=8
#SBATCH --time=96:00:00
#SBATCH --mem=64gb

#Replace this with your UGA email to get notified on completion
#SBATCH --mail-user=""
#SBATCH --mail-type=BEGIN,END,FAIL

ml BLAST+/2.12.0-gompi-2020b
ml IQ-TREE/2.2.0-GCC-10.2.0-nompi
singularity run docker://lorentzb/orthofinder bash 02_call_orthofinder.sh

