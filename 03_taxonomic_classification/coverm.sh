#!/bin/bash

############### Zona de Parámetros de solicitud de recursos a SLURM ###################

#SBATCH --job-name=coverm               #Nombre del job
#SBATCH -p long                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 1                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=10              #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=100000                    #Memoria en Mb por CPU, Default=2048
#SBATCH --time=200:00:00                #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o coverm_job.o%j               #Nombre de archivo de salida


############################### Zona Carga de Módulos #################################
mamba activate coverm
export RUST_BACKTRACE=1

########################### Zona de Ejecución de código ###############################

TRIMO="$HOME/trabajo_grado/trimmomatic" #creo la ruta para la carpeta de trimmomatic en donde están las reads

coverm genome \
    --coupled \
    $TRIMO/output_forward_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_1.fq.gz $TRIMO/output_reverse_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_2.fq.gz \
    $TRIMO/output_forward_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_1.fq.gz $TRIMO/output_reverse_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_2.fq.gz \
    $TRIMO/output_forward_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz $TRIMO/output_reverse_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz \
    $TRIMO/output_forward_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz $TRIMO/output_reverse_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz \
    $TRIMO/output_forward_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz $TRIMO/output_reverse_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz \
    $TRIMO/output_forward_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_P3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_P3_EKDN220047941-1A_HLTGVDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz \
    $TRIMO/output_forward_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz $TRIMO/output_reverse_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz \
    $TRIMO/output_forward_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz $TRIMO/output_reverse_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz \
    --genome-fasta-files \
    /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/coverm/MAGS/*a \
    --dereplicate \
    --mapper minimap2-sr \
    --methods relative_abundance \
    -o STDOUT







