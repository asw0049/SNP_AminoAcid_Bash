#!/bin/bash
#This script will be used to find replace the nucleotide of a refernce file with the SNP of the same position from an SNV file to generate a new mutated sequence file to then be 
#transcribed. The output would then pass to another script that would find the AUG start site and be trasnformed into codons. The resultign codon file ould then be passed to a scrupt
#that would trasnlate the codons into their respoective amino acids.

#To use this script, run ./SNP_ref_replace.sh ref_file snp_file genome_type in your terminal. The ref_file should be sequence of positions and nucleotides associated with a reference genome.
#The snp_file should be a list of positions and called SNPs. It is impoartant these remain in order. And the genome_type argument should be provdied to call upon type of genome taht should be used
#to provide suggested translated sequences. "MITO" for mtiochdonrial genomes and "NUC" for nuclear genomes are teh allowed arguments for the genome_type argument.

################################
######## Variables #############
################################

ref_file="$1"
snp_file="$2"
genome_type="$3"

#################################
####### Dependencies ############
#################################

#### Scripts #####
#transcription.awk
#NUC_genome.awk
#MITO_genome.awk

#### Programs ####
#diff
#join
#awk
#grep
#cat

#################################
####### Files Generated #########
#################################
#mergedMut.txt
#mergedMut.chk.tmp
#mutRNAseq.txt
#mutCodonseq.txt
#mutAase.txt

#################################
######### Commands ##############
#################################

if [[ -f $snp_file && -f $ref_file ]]; then
    join --nocheck-order -a 2 $snp_file $ref_file | awk -F " " '{print $1"\t"$2}'> mergedMut.txt
    diff $snp_file $ref_file > mergedMut.chk.tmp
    cat mergedMut.txt | awk -F" " -f transcription.awk | awk -F"\t" '{print $3}' | tr '\n' ' '| sed 's/ //g'> mutRNAseq.txt
    cat mutRNAseq.txt | grep -Eo --color=auto 'AUG(...)*U(A(A|G)|GA)'| fold -w 3 > mutCodonseq.txt
    cat mutCodonseq.txt | awk -F" " -f ${3}_genome.awk | awk -F" " -f ${3}_genome_2.awk | awk -F" " -f AA_pKa3.awk > mutAaseq.txt
else
    echo "One or more files not found. Aborting!"
fi
exit


