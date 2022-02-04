#!/bin/sh
#$ -S /bin/sh
#$ -cwd
#$ -l s_vmem=32G
#$ -l mem_req=32G
#$ -o ~/log
#$ -e ~/log

export _JAVA_OPTIONS="-Xmx1g"
singularity exec -B $HOME/20220203_RNAseq_OsaKC:/work \
                 $HOME/rnaseq_pipeline.0.3.1.sif /singularity \
                 -m UMI -l 100 -u 10 -c 16 -r Osa
