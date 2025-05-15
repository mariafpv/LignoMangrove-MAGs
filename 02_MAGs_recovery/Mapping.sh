#!/bin/bash

############### Zona de Parámetros de solicitud de recursos a SLURM ###################

#SBATCH --job-name=C_bowtie2            #Nombre del job
#SBATCH -p medium                       #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 1                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=3               #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=48000                     #Memoria en Mb por CPU, Default=2048
#SBATCH --time=48:00:00                 #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o C_bowtie2b_job.o%j           #Nombre de archivo de salida


############################### Zona Carga de Módulos #################################

module load bowtie2
module load samtools

########################### Zona de Ejecución de código ###############################

#C_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_C.fna.gz C_index

bowtie2 -x C_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C1_EKDN220047951-1A_HLTGVDSX5_L3_2.fq.gz -S output_C1.sam

bowtie2 -x C_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C2_EKDN220047952-1A_HLTGVDSX5_L3_2.fq.gz -S output_C2.sam

bowtie2 -x C_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_C3_EKDN220047953-1A_HLWCFDSX5_L1_2.fq.gz -S output_C3.sam

samtools view -bS output_C1.sam > output_C1.bam

samtools view -bS output_C2.sam > output_C2.bam

samtools view -bS output_C3.sam > output_C3.bam

samtools sort output_C1.bam -o output_C1.sorted.bam

samtools sort output_C2.bam -o output_C2.sorted.bam

samtools sort output_C3.bam -o output_C3.sorted.bam

samtools index output_C1.sorted.bam

samtools index output_C2.sorted.bam

samtools index output_C3.sorted.bam


#CW_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_CW.fna.gz CW_index

bowtie2 -x CW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz -S output_CW1.sam

bowtie2 -x CW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz -S output_CW2.sam

bowtie2 -x CW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz -S output_CW3.sam

samtools view -bS output_CW1.sam > output_CW1.bam

samtools view -bS output_CW2.sam > output_CW2.bam

samtools view -bS output_CW3.sam > output_CW3.bam

samtools sort output_CW1.bam -o output_CW1.sorted.bam

samtools sort output_CW2.bam -o output_CW2.sorted.bam

samtools sort output_CW3.bam -o output_CW3.sorted.bam

samtools index output_CW1.sorted.bam

samtools index output_CW2.sorted.bam

samtools index output_CW3.sorted.bam


#L_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_L.fna.gz L_index

#decidí juntar lo que inicialmente tenía en dos jobs

bowtie2 -x L_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_L1_EKDN220047945-1A_HLTGVDSX5_L2_2.fq.gz -S output_L1.sam

bowtie2 -x L_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_L2_EKDN220047946-1A_HLTGVDSX5_L2_2.fq.gz -S output_L2.sam

bowtie2 -x L_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_L3_EKDN220047947-1A_HLTGVDSX5_L2_2.fq.gz -S output_L3.sam

samtools view -bS output_L1.sam > output_L1.bam

samtools view -bS output_L2.sam > output_L2.bam

samtools view -bS output_L3.sam > output_L3.bam

samtools sort output_L1.bam -o output_L1.sorted.bam

samtools sort output_L2.bam -o output_L2.sorted.bam

samtools sort output_L3.bam -o output_L3.sorted.bam

samtools index output_L1.sorted.bam

samtools index output_L2.sorted.bam

samtools index output_L3.sorted.bam



#LW_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_LW.fna.gz LW_index


bowtie2 -x LW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz -S output_LW1.sam

bowtie2 -x LW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz -S output_LW2.sam

bowtie2 -x LW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz -S output_LW3.sam

samtools view -bS output_LW1.sam > output_LW1.bam

samtools view -bS output_LW2.sam > output_LW2.bam

samtools view -bS output_LW3.sam > output_LW3.bam


samtools sort output_LW1.bam -o output_LW1.sorted.bam

samtools sort output_LW2.bam -o output_LW2.sorted.bam

samtools sort output_LW3.bam -o output_LW3.sorted.bam

samtools index output_LW1.sorted.bam

samtools index output_LW2.sorted.bam

samtools index output_LW3.sorted.bam



#P_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_P.fna.gz P_index


bowtie2 -x P_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_P1_EKDN220047939-1A_HLTGVDSX5_L1_2.fq.gz -S output_P1.sam

bowtie2 -x P_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_P2_EKDN220047940-1A_HLTGVDSX5_L1_2.fq.gz -S output_P2.sam

bowtie2 -x P_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_P3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_P3_EKDN220047941-1A_HLTGVDSX5_L1_2.fq.gz -S output_P3.sam

samtools view -bS output_P1.sam > output_P1.bam

samtools view -bS output_P2.sam > output_P2.bam

samtools view -bS output_P3.sam > output_P3.bam

samtools sort output_P1.bam -o output_P1.sorted.bam

samtools sort output_P2.bam -o output_P2.sorted.bam

samtools sort output_P3.bam -o output_P3.sorted.bam

samtools index output_P1.sorted.bam

samtools index output_P2.sorted.bam

samtools index output_P3.sorted.bam



#PW_TREATMENT

bowtie2-build /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_PW.fna.gz PW_index

bowtie2 -x PW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz -S output_PW1.sam

bowtie2 -x PW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz -S output_PW2.sam

bowtie2 -x PW_index -1 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_forward_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz -2 /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/trimmomatic/output_reverse_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz -S output_PW3.sam

samtools view -bS output_PW1.sam > output_PW1.bam

samtools view -bS output_PW2.sam > output_PW2.bam

samtools view -bS output_PW3.sam > output_PW3.bam

samtools sort output_PW1.bam -o output_PW1.sorted.bam

samtools sort output_PW2.bam -o output_PW2.sorted.bam

samtools sort output_PW3.bam -o output_PW3.sorted.bam

samtools index output_PW1.sorted.bam

samtools index output_PW2.sorted.bam

samtools index output_PW3.sorted.bam








