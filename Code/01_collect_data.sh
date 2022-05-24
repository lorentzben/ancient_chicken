#! /usr/bin/env bash 

# Collect the files
mkdir proteomes
cd proteomes
wget http://ftp.ensembl.org/pub/release-105/fasta/homo_sapiens/pep/Homo_sapiens.GRCh38.pep.all.fa.gz -O Homo_sapiens.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/gallus_gallus/pep/Gallus_gallus.GRCg6a.pep.all.fa.gz -O Gallus_gallus.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/ornithorhynchus_anatinus/pep/Ornithorhynchus_anatinus.mOrnAna1.p.v1.pep.all.fa.gz -O Ornithorhynchus_anatinus.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/crocodylus_porosus/pep/Crocodylus_porosus.CroPor_comp1.pep.all.fa.gz -O Crocodylus_porosus.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/terrapene_carolina_triunguis/pep/Terrapene_carolina_triunguis.T_m_triunguis-2.0.pep.all.fa.gz -O Terrapene_carolina_triunguis.fa.gz 
wget http://ftp.ensembl.org/pub/release-105/fasta/prolemur_simus/pep/Prolemur_simus.Prosim_1.0.pep.all.fa.gz -O Prolemur_simus.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/gorilla_gorilla/pep/Gorilla_gorilla.gorGor4.pep.all.fa.gz -O Gorilla_gorilla.fa.gz
wget http://ftp.ensembl.org/pub/release-105/fasta/phascolarctos_cinereus/pep/Phascolarctos_cinereus.phaCin_unsw_v4.1.pep.all.fa.gz -O Phascolarctos_cinereus.fa.gz
wget http://ftp.ensembl.org/pub/release-106/fasta/canis_lupus_familiaris/pep/Canis_lupus_familiaris.ROS_Cfam_1.0.pep.all.fa.gz -O Canis_lupus_familiaris.fa.gz
wget http://ftp.ensembl.org/pub/release-106/fasta/xenopus_tropicalis/pep/Xenopus_tropicalis.Xenopus_tropicalis_v9.1.pep.all.fa.gz -O xenopus_tropicalis.fa.gz


# Uncompress the data
for f in *.gz
do 
    gunzip $f
done;

# Select the primary transcripts
for f in *fa ; do python3 /opt/OrthoFinder/tools/primary_transcript.py $f ; done


