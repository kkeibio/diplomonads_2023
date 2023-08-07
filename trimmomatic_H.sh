#!/bin/bash

R1="Hexamita-RNA_S1_L001_R1_001.fastq"
R2="Hexamita-RNA_S1_L001_R2_001.fastq"

TRIMMOMATIC_HOME="Trimmomatic-0.39"

java -jar \
 ${TRIMMOMATIC_HOME}/trimmomatic-0.39.jar \
 PE \
 -phred33 \
 -threads 128 \
 -trimlog log_trimmomatic.log \
 ${R1} \
 ${R2} \
 paired_output_1.fq \
 unpaired_output_1.fq \
 paired_output_2.fq \
 unpaired_output_2.fq \
 ILLUMINACLIP:${TRIMMOMATIC_HOME}/adapters/NexteraPE-PE.fa:3:30:10 \
 LEADING:30 \
 TRAILING:30 \
 SLIDINGWINDOW:4:25 \
 MINLEN:36
