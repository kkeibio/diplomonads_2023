#!/bin/bash

QUERY=longest_orfs.pep
RES=${QUERY}.result.tsv
TDB=nr

blastp \
 -query ${QUERY} \
 -db ${TDB} \
 -evalue 1e-10 \
 -num_threads 128 \
 -outfmt "6 qseqid sseqid saccver evalue staxids length qlen slen pident stitle qseq sseq qcovs frames" \
 -out $RES
