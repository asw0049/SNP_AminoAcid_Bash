{
if (($1 == "AUG")||($1 =="AUA")) Aa="Met";
else if (($1 == "UUU")||($1 == "UUC")) Aa="Phe";
else if (($1 == "UUA")||($1 == "UUG")||($1 == "CUU")||($1 =="CUC")||($1 == "CUA")||($1 == "CUG")) Aa="Leu";
else if (($1 == "AUU")||($1 == "AUC")) Aa="Ile";
else if (($1 == "GUU")||($1 == "GUC")||($1 == "GUA")||($1 == "GUG")) Aa="Val";
else if (($1 == "UCU")||($1 == "UCC")||($1 == "UCA")||($1 == "UCG")||($1 == "AGU")||($1 == "AGC")) Aa="Ser";
else if (($1 == "CCU")||($1 == "CCC")||($1 == "CCA")||($1 == "CCG")) Aa="Pro";
else if (($1 == "ACU")||($1 == "ACC")||($1 == "ACA")||($1 == "ACG")) Aa="Thr";
else if (($1 == "GCU")||($1 == "GCC")||($1 == "GCA")||($1 == "GCG")) Aa="Ala";
else if (($1 == "UAU")||($1 == "UAC")) Aa="Tyr";
else if (($1 == "CAU")||($1 == "CAC")) Aa="His";
else if (($1 == "CAA")||($1 == "CAG")) Aa="Gln";
else if (($1 == "AAU")||($1 == "AAC")) Aa="Asn";
else if (($1 == "AAA")||($1 == "AAG")) Aa="Lys";
else if (($1 == "GAU")||($1 == "GAC")) Aa="Asp";
else if (($1 == "GAA")||($1 == "GAG")) Aa="Glu";
else if (($1 == "UGU")||($1 == "UGC")) Aa="Cys";
else if (($1 == "UGA")||($1 == "UGG")) Aa="Trp";
else if (($1 == "CGU")||($1 == "CGC")||($1 == "CGA")||($1 == "CGG")) Aa="Arg";
else if (($1 == "GGU")||($1 == "GGC")||($1 == "GGA")||($1 == "GGG")) Aa="Gly";
else if (($1 == "AGA")||($1 == "AGG")) Aa="STOP";
print ($0)"\t"Aa
}
