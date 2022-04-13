#! /usr/bin/env bash

# Call orthofinder 
orthofinder -f proteomes/primary_transcripts/ -S blast -T iqtree -t 16
