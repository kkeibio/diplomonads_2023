#!/bin/bash

R1="Diplomonad_L006_R1.fastq"
R2="Diplomonad_L006_R2.fastq"

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
 ILLUMINACLIP:${TRIMMOMATIC_HOME}/adapters/TruSeq3-PE-2.fa:3:30:10 \
 LEADING:30 \
 TRAILING:30 \
 SLIDINGWINDOW:4:25 \
 MINLEN:36
