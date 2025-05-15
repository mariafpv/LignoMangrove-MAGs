#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=Megahit                #Nombre del job
#SBATCH -p bigmem                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 2                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=2                 #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=300000                      #Memoria en Mb por CPU, Default=2048
#SBATCH --time=360:00:00                  #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o Megahit_output.o%j             #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

module load megahit

############################ Zona de Ejecución de código ################################

megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_2.fq.gz -o C/C_treatm_out2

#megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_forward_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_forward_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_forward_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_reverse_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_reverse_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/Trimmomatic/output_reverse_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz -o CW_treatm_out

megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_2.fq.gz -o L_treatm_out

megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz -o LW_treatm_out

megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_P3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_P3_EKDN220047941-1A_HLTGVDSX5_L1_2.fq.gz -o P_treatm_out

megahit -1 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_forward_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz,/hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/trimmomatic/output_reverse_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz -o PW_treatm_out



