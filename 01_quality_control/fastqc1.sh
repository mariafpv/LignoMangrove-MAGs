#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=fastqc1_L              #Nombre del job
#SBATCH -p medium                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 1                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=2                 #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=12000                       #Memoria en Mb por CPU, Default=2048
#SBATCH --time=24:00:00                   #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o fastqc1_L_output.o%j           #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

module load fastqc
module load java

############################ Zona de Ejecución de código ################################

#Faltan las muestras C y CW

#fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L1/L1_EKDN220047945-1A_HLTGVDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

#fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L1/L1_EKDN220047945-1A_HLTGVDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

#fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L2/L2_EKDN220047946-1A_HLTGVDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

#fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L2/L2_EKDN220047946-1A_HLTGVDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L3/L3_EKDN220047947-1A_HLTGVDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/L3/L3_EKDN220047947-1A_HLTGVDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial



fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW1/LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW1/LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW2/LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW2/LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW3/LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW3/LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial


fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P1/P1_EKDN220047939-1A_HLTGVDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P1/P1_EKDN220047939-1A_HLTGVDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P2/P2_EKDN220047940-1A_HLTGVDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P2/P2_EKDN220047940-1A_HLTGVDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P3/P3_EKDN220047941-1A_HLTGVDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/P3/P3_EKDN220047941-1A_HLTGVDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial


fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW1/PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW1/PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW2/PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW2/PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW3/PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

fastqc /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW3/PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz --outdir /hpcfs/home/ciencias_biologicas/mf.penav1/Trabajo_grado/fastqc_inicial

