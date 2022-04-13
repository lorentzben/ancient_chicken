#! /usr/bin/env bash

# Call orthofinder 
orthofinder -f proteomes/primary_transcripts/ -S blast -M msa -A mafft -T iqtree -t 16
