#!/bin/bash

############### Zona de Parámetros de solicitud de recursos a SLURM ###################

#SBATCH --job-name=filt                 #Nombre del job
#SBATCH -p medium                       #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 1                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=3               #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=30000                     #Memoria en Mb por CPU, Default=2048
#SBATCH --time=10:00:00                 #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o filt_job.o%j                 #Nombre de archivo de salida
 
############################### Zona Carga de Módulos #################################

mamba activate vamb

############################# Zona de Ejecución de código #############################

concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_C.fna.gz 
/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_C.fa -m 500 --keepnames

#concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_CW2.fna.gz /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_CW.fa -m 500 --keepnames

#concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_L2.fna.gz 
/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_L.fa -m 500 --keepnames

#concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_LW2.fna.gz /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_LW.fa -m 500 --keepnames

#concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_P2.fna.gz 
/hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_P.fa -m 500 --keepnames

#concatenate.py /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/catalogue_PW2.fna.gz /hpcfs/home/ciencias_biologicas/mf.penav1/trabajo_grado/concatenar/final_contigs_PW.fa -m 500 --keepnames
