#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=C_gtdbtk               #Nombre del job
#SBATCH -p medium                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 1                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=10                #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=100000                      #Memoria en Mb por CPU, Default=2048
#SBATCH --time=100:00:00                  #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o C_gtdbtk_job.o%j               #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

mamba activate gtdbtk-2.1.1

############################ Zona de Ejecución de código ################################

gtdbtk classify_wf --genome_dir $HOME/trabajo_grado/coverm/MAGS --out_dir $HOME/trabajo_grado/gtdbtk/all/gtdbtk_all --extension fa 