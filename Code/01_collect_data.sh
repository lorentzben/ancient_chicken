#! /usr/bin/env bash 

# Collect the files
mkdir proteomes
cd proteomes
wget http://ftp.ensembl.org/pub/release-105/fasta/homo_sapiens/pep/Homo_sapiens.GRCh38.pep.all.fa.gz

# Uncompress the data
for f in *.gz
do 
    gunzip $f
done;

# Select the primary transcripts
for f in *fa ; do python3 /opt/OrthoFinder/tools/primary_transcript.py $f ; done


# Call orthofinder 
orthofinder -f primary_transcripts/
