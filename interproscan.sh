#!/bin/bash

FASTA=longest_orfs.pep

singularity exec interproscan.5.52.sif /interproscan/interproscan.sh \
 -dp \
 --cpu 64 \
 -iprlookup \
 -i ${FASTA}
