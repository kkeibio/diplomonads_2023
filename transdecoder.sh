#!/bin/bash

ASSEMBLY=Trinity.fasta

singularity exec transdecoder.5.5.0.sif TransDecoder.LongOrfs \
 -m 50 \
 -G Hexamita \
 -t $ASSEMBLY
