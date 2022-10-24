{
if ($1 == "AUG") Aa="M";
else if (($1 == "UUU")||($1 == "UUC")) Aa="F";
else if (($1 == "UUA")||($1 == "UUG")||($1 == "CUU")||($1 =="CUC")||($1 == "CUA")||($1 == "CUG")) Aa="L";
else if (($1 == "AUU")||($1 == "AUC")||($1 == "AUA")) Aa="I";
else if (($1 == "GUU")||($1 == "GUC")||($1 == "GUA")||($1 == "GUG")) Aa="V";
else if (($1 == "UCU")||($1 == "UCC")||($1 == "UCA")||($1 == "UCG")||($1 == "AGU")||($1 == "AGC")) Aa="S";
else if (($1 == "CCU")||($1 == "CCC")||($1 == "CCA")||($1 == "CCG")) Aa="P";
else if (($1 == "ACU")||($1 == "ACC")||($1 == "ACA")||($1 == "ACG")) Aa="T";
else if (($1 == "GCU")||($1 == "GCC")||($1 == "GCA")||($1 == "GCG")) Aa="A";
else if (($1 == "UAU")||($1 == "UAC")) Aa="Y";
else if (($1 == "CAU")||($1 == "CAC")) Aa="H";
else if (($1 == "CAA")||($1 == "CAG")) Aa="Q";
else if (($1 == "AAU")||($1 == "AAC")) Aa="N";
else if (($1 == "AAA")||($1 == "AAG")) Aa="K";
else if (($1 == "GAU")||($1 == "GAC")) Aa="D";
else if (($1 == "GAA")||($1 == "GAG")) Aa="E";
else if (($1 == "UGU")||($1 == "UGC")) Aa="C";
else if ($1 == "UGG") Aa="W";
else if (($1 == "CGU")||($1 == "CGC")||($1 == "CGA")||($1 == "CGG")||($1 == "AGA")||($1 == "AGG")) Aa="R";
else if (($1 == "GGU")||($1 == "GGC")||($1 == "GGA")||($1 == "GGG")) Aa="G";
else if (($1 == "UAA")||($1 == "UAG")||($1 == "UGA")) Aa="STOP";
print ($0)"\t"Aa
}
