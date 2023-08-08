#!/bin/bash

# MMseqs2 Version: 7e2840992948ee89dcc336522dc98a74fe0adf00

FAS=protein.fasta
DB="nr.20230727.fnaDB"
RES=${FAS}.mmseqs.s7.500hits.cigar.nr.result.tsv

mkdir -p tmp

mmseqs createdb \
 ${FAS} queryDB

mmseqs search \
 queryDB ${DB} resultDB tmp \
 -s 7 \
 -e 0.1 \
 --threads 128 \
 --max-seqs 500 \
 --disk-space-limit 1000G \
 --split-memory-limit 2000G \
 --compressed 1 \
 -a 1

mmseqs convertalis \
 queryDB ${DB} resultDB ${RES} \
  --format-mode 4 \
  --threads 128 \
  --format-output query,target,evalue,pident,fident,nident,qstart,qend,qlen,tstart,tend,tlen,alnlen,bits,mismatch,qcov,tcov,taxid,taxname,taxlineage,qheader,theader
