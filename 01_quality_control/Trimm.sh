#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=Trimm                  #Nombre del job
#SBATCH -p medium                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 1                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=2                 #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=12000                       #Memoria en Mb por CPU, Default=2048
#SBATCH --time=24:00:00                   #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o Trimm_output.o%j               #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

module load trimmomatic

############################ Zona de Ejecución de código ################################

#Faltan las muestras C, L, P

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW1/CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW1/CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz output_forward_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz output_forward_unpaired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_1.fq.gz output_reverse_paired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz output_reverse_unpaired_CW1_EKDN220047948-1A_HLTGVDSX5_L3_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW2/CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW2/CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz output_forward_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz output_forward_unpaired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_1.fq.gz output_reverse_paired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz output_reverse_unpaired_CW2_EKDN220047949-1A_HLTGVDSX5_L3_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW3/CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/CW3/CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz output_forward_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz output_forward_unpaired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_1.fq.gz output_reverse_paired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz output_reverse_unpaired_CW3_EKDN220047950-1A_HLTGVDSX5_L3_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50



trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW1/LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW1/LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz output_forward_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz output_forward_unpaired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_1.fq.gz output_reverse_paired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz output_reverse_unpaired_LW1_EKDN220047942-1A_HLTGVDSX5_L1_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW2/LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW2/LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz output_forward_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz output_forward_unpaired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_1.fq.gz output_reverse_paired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz output_reverse_unpaired_LW2_EKDN220047943-1A_HLTGVDSX5_L2_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW3/LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/LW3/LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz output_forward_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz output_forward_unpaired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_1.fq.gz output_reverse_paired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz output_reverse_unpaired_LW3_EKDN220047944-1A_HLTGVDSX5_L2_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50



trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW1/PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW1/PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz output_forward_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz output_forward_unpaired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_1.fq.gz output_reverse_paired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz output_reverse_unpaired_PW1_EKDN220047936-1A_HLWCFDSX5_L1_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW2/PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW2/PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz output_forward_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz output_forward_unpaired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_1.fq.gz output_reverse_paired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz output_reverse_unpaired_PW2_EKDN220047937-1A_HLWCFDSX5_L2_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50

trimmomatic PE /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW3/PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz /hpcfs/home/ciencias_biologicas/a.reyes/Investigacion/Datos/Mafe/01.RawData/PW3/PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz output_forward_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz output_forward_unpaired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_1.fq.gz output_reverse_paired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz output_reverse_unpaired_PW3_EKDN220047938-1A_HLTGVDSX5_L1_2.fq.gz ILLUMINACLIP:Nextera_PE.fa:2:30:10 SLIDINGWINDOW:4:20 MINLEN:50


