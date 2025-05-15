#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=vamb              #Nombre del job
#SBATCH -p long                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 1                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=10               #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=80000                     #Memoria en Mb por CPU, Default=2048
#SBATCH --time=360:00:00                 #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o vamb_job.o%j              #Nombre de archivo de salida


############################## Zona Carga de Módulos ####################################

mamba activate vamb2

############################ Zona de Ejecución de código ################################

vamb --outdir vamb_out_C --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_C.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/C/output_C1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/C/output_C2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/C/output_C3.bam --minfasta 200000


vamb --outdir vamb_out_CW --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_CW.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/CW/output_CW1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/CW/output_CW2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/CW/output_CW3.bam --minfasta 200000


vamb --outdir vamb_out_L --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_L.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/L/output_L1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/L/output_L2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/L/output_L3.bam --minfasta 200000


vamb --outdir vamb_out_LW --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_LW.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/LW/output_LW1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/LW/output_LW2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/LW/output_LW3.bam --minfasta 200000


vamb --outdir vamb_out_P --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_P.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/P/output_P1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/P/output_P2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/P/output_P3.bam --minfasta 200000


vamb --outdir vamb_out_PW --fasta /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_PW.fna.gz --bamfiles /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/PW/output_PW1.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/PW/output_PW2.bam /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/vamb/PW/output_PW3.bam --minfasta 200000
