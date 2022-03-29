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

singularity run docker://lorentzb/orthofinder bash 02_call_orthofinder.sh

