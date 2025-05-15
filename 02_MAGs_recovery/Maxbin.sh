#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=abundance            #Nombre del job
#SBATCH -p medium                       #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 2                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=2               #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=300000                    #Memoria en Mb por CPU, Default=2048
#SBATCH --time=360:00:00                #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o abundance_job.o%j            #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

module load bbmap
module load maxbin2

############################ Zona de Ejecución de código ################################

pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/C/C_treatm_out/mapeo2/output_C1.sam  out=cov_C1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/C/C_treatm_out/mapeo2/output_C2.sam  out=cov_C2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/C/C_treatm_out/mapeo2/output_C3.sam  out=cov_C3.txt

awk '{print $1"\t"$5}' cov_C1.txt | grep -v '^#' > abundance_C1.txt
awk '{print $1"\t"$5}' cov_C2.txt | grep -v '^#' > abundance_C2.txt
awk '{print $1"\t"$5}' cov_C3.txt | grep -v '^#' > abundance_C3.txt


run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_C_result.fa -out maxbin_C -abund abundance_C1.txt -abund2 abundance_C2.txt -abund3 abundance_C3.txt



pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/CW/CW_treatm_out/mapeo2/output_CW1.sam  out=cov_CW1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/CW/CW_treatm_out/mapeo2/output_CW2.sam  out=cov_CW2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/CW/CW_treatm_out/mapeo2/output_CW3.sam  out=cov_CW3.txt

awk '{print $1"\t"$5}' cov_CW1.txt | grep -v '^#' > abundance_CW1.txt
awk '{print $1"\t"$5}' cov_CW2.txt | grep -v '^#' > abundance_CW2.txt
awk '{print $1"\t"$5}' cov_CW3.txt | grep -v '^#' > abundance_CW3.txt

run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_CW_result.fa -out maxbin_bins_CW/maxbin_CW -abund abundance_CW1.txt -abund2 abundance_CW2.txt -abund3 abundance_CW3.txt



pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/L/L_treatm_out/mapeo2/output_L1.sam  out=cov_L1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/L/L_treatm_out/mapeo2/output_L2.sam  out=cov_L2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/L/L_treatm_out/mapeo2/output_L3.sam  out=cov_L3.txt

awk '{print $1"\t"$5}' cov_L1.txt | grep -v '^#' > abundance_L1.txt
awk '{print $1"\t"$5}' cov_L2.txt | grep -v '^#' > abundance_L2.txt
awk '{print $1"\t"$5}' cov_L3.txt | grep -v '^#' > abundance_L3.txt

run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_L_result.fa -out maxbin_L -abund abundance_L1.txt -abund2 abundance_L2.txt -abund3 abundance_L3.txt



pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/LW/LW_treatm_out/mapeo2/output_LW1.sam  out=cov_LW1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/LW/LW_treatm_out/mapeo2/output_LW2.sam  out=cov_LW2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/LW/LW_treatm_out/mapeo2/output_LW3.sam  out=cov_LW3.txt

awk '{print $1"\t"$5}' cov_LW1.txt | grep -v '^#' > abundance_LW1.txt
awk '{print $1"\t"$5}' cov_LW2.txt | grep -v '^#' > abundance_LW2.txt
awk '{print $1"\t"$5}' cov_LW3.txt | grep -v '^#' > abundance_LW3.txt

run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_LW_result.fa -out maxbin_LW -abund abundance_LW1.txt -abund2 abundance_LW2.txt -abund3 abundance_LW3.txt



pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/P/P_treatm_out/mapeo2/output_P1.sam  out=cov_P1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/P/P_treatm_out/mapeo2/output_P2.sam  out=cov_P2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/P/P_treatm_out/mapeo2/output_P3.sam  out=cov_P3.txt

awk '{print $1"\t"$5}' cov_P1.txt | grep -v '^#' > abundance_P1.txt
awk '{print $1"\t"$5}' cov_P2.txt | grep -v '^#' > abundance_P2.txt
awk '{print $1"\t"$5}' cov_P3.txt | grep -v '^#' > abundance_P3.txt

run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_P_result.fa -out maxbin_P -abund abundance_P1.txt -abund2 abundance_P2.txt -abund3 abundance_P3.txt



pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/PW/PW_treatm_out/mapeo2/output_PW1.sam  out=cov_PW1.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/PW/PW_treatm_out/mapeo2/output_PW2.sam  out=cov_PW2.txt
pileup.sh in=/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/megahit/PW/PW_treatm_out/mapeo2/output_PW3.sam  out=cov_PW3.txt

awk '{print $1"\t"$5}' cov_PW1.txt | grep -v '^#' > abundance_PW1.txt
awk '{print $1"\t"$5}' cov_PW2.txt | grep -v '^#' > abundance_PW2.txt
awk '{print $1"\t"$5}' cov_PW3.txt | grep -v '^#' > abundance_PW3.txt

run_MaxBin.pl -thread 16 -contig /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_PW_result.fa -out maxbin_PW -abund abundance_PW1.txt -abund2 abundance_PW2.txt -abund3 abundance_PW3.txt




