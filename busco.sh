#!/bin/bash

SP_NAME='NAME'
Query=TSA.pep

singularity exec busco.sif busco \
 -i ${Query} \
 -o ${SP_NAME} -m prot \
 -c 16 \
 -f --lineage eukaryota
 