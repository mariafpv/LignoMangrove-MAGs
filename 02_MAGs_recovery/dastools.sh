#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=dastools               #Nombre del job
#SBATCH -p medium                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 1                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=10                #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=80000                       #Memoria en Mb por CPU, Default=2048
#SBATCH --time=100:00:00                  #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o dastools_job.o%j               #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

conda activate das_tool2

############################ Zona de Ejecución de código ################################

DAS_Tool \
    -i C_contig2bin_maxbin.tsv,C_contig2bin_metabat.tsv,C_contig2bin_vamb.tsv,\
       CW_contig2bin_maxbin.tsv,CW_contig2bin_metabat.tsv,CW_contig2bin_vamb.tsv,\
       L_contig2bin_maxbin.tsv,L_contig2bin_metabat.tsv,L_contig2bin_vamb.tsv,\
       LW_contig2bin_maxbin.tsv,LW_contig2bin_metabat.tsv,LW_contig2bin_vamb.tsv,\
       P_contig2bin_maxbin.tsv,P_contig2bin_metabat.tsv,P_contig2bin_vamb.tsv,\
       PW_contig2bin_maxbin.tsv,PW_contig2bin_metabat.tsv,PW_contig2bin_vamb.tsv \
    -c /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_C.fa,\
       /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_CW.fa,\
       /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_L.fa,\
       /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_LW.fa,\
       /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_P.fa,\
       /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_PW.fa \
    -o dastool/dastool_MAGs \
    --write_bins \
    --write_bin_evals