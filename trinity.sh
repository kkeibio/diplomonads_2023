#/bin/bash

R1="paired_output_1.fq"
R2="paired_output_2.fq"

singularity exec \
 trinityrnaseq_latest.v2.15.0.sif Trinity \
 --seqType fq \
 --max_memory 200G \
 --left ${R1} \
 --right ${R2} \
 --CPU 128
