#!/bin/bash
############### Zona de Parámetros de solicitud de recursos a SLURM #####################
#SBATCH --job-name=PW_contig2bin          #Nombre del job
#SBATCH -p medium                         #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                              #Nodos requeridos, Default=1
#SBATCH -n 1                              #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=10                #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=80000                       #Memoria en Mb por CPU, Default=2048
#SBATCH --time=100:00:00                  #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=mf.penav1@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o PW_contig2bin_job.o%j          #Nombre de archivo de salida

############################## Zona Carga de Módulos ####################################

############################ Zona de Ejecución de código ################################

#This code is to create a contig2bin table for Dastools. I did 1 table for each binning tool
#This script is for PW treatments but it was done for all the treatments
#At the end I got 3 tables (each bining tool) per treatment


#Maxbin:
# Directory containing the bin files
BIN_DIR="$HOME/trabajo_grado/maxbin/PW/maxbin_bins_PW"

# Output file
OUTPUT_FILE="PW_contig2bin_maxbin.tsv"

# Initialize the output file
echo -e "Contig\tBin" > "$OUTPUT_FILE"

# Loop over each bin file in the directory
for BIN_FILE in "$BIN_DIR"/*.fasta; do
    # Extract the bin name (without the path and extension)
    BIN_NAME=$(basename "$BIN_FILE" .fasta)
    
    # Read each line in the bin file
    while read -r line; do
        # If the line starts with ">", it's a contig name
        if [[ $line == ">"* ]]; then
            # Remove the ">" character to get the contig name
            CONTIG_NAME=${line#>}
            # Append the contig name and bin name to the output file
            echo -e "$CONTIG_NAME\t$BIN_NAME" >> "$OUTPUT_FILE"
        fi
    done < "$BIN_FILE"
done


#Metabat:
# Directory containing the bin files
BIN_DIR2="$HOME/trabajo_grado/metabat/PW/metabat_bins_PW"

# Output file
OUTPUT_FILE2="PW_contig2bin_metabat.tsv"

# Initialize the output file
echo -e "Contig\tBin" > "$OUTPUT_FILE2"

# Loop over each bin file in the directory
for BIN_FILE2 in "$BIN_DIR2"/*.fa; do
    # Extract the bin name (without the path and extension)
    BIN_NAME2=$(basename "$BIN_FILE2" .fa)
    
    # Read each line in the bin file
    while read -r line; do
        # If the line starts with ">", it's a contig name
        if [[ $line == ">"* ]]; then
            # Remove the ">" character to get the contig name
            CONTIG_NAME2=${line#>}
            # Append the contig name and bin name to the output file
            echo -e "$CONTIG_NAME2\t$BIN_NAME2" >> "$OUTPUT_FILE2"
        fi
    done < "$BIN_FILE2"
done




#Vamb:
# Directory containing the bin files
BIN_DIR3="$HOME/trabajo_grado/vamb/PW/vamb_out_PW/bins"

# Output file
OUTPUT_FILE3="PW_contig2bin_vamb.tsv"

# Initialize the output file
echo -e "Contig\tBin" > "$OUTPUT_FILE3"

# Loop over each bin file in the directory
for BIN_FILE3 in "$BIN_DIR3"/*.fna; do
    # Extract the bin name (without the path and extension)
    BIN_NAME3=$(basename "$BIN_FILE3" .fna)
    
    # Read each line in the bin file
    while read -r line; do
        # If the line starts with ">", it's a contig name
        if [[ $line == ">"* ]]; then
            # Remove the ">" character to get the contig name
            CONTIG_NAME3=${line#>}
            # Append the contig name and bin name to the output file
            echo -e "$CONTIG_NAME3\t$BIN_NAME3" >> "$OUTPUT_FILE3"
        fi
    done < "$BIN_FILE3"
done

#Then, I remove headers and combine tables. (This part is not necessary)

sed -i '1d' PW_contig2bin_maxbin.tsv
sed -i '1d' PW_contig2bin_metabat.tsv
sed -i '1d' PW_contig2bin_vamb.tsv

cat PW_contig2bin_maxbin.tsv PW_contig2bin_metabat.tsv PW_contig2bin_vamb.tsv > PW_contig2bin