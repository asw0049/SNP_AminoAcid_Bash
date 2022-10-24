{
#if ($3 == "G") pKa="";
#else if ($3 == "A") pKa="";
#else if ($3 == "V") pKa="";
#else if ($3 == "L") pKa="";
#else if ($3 == "I") pKa="";
#else if ($3 == "M") pKa="";
#else if ($3 == "P") pKa="";
#else if ($3 == "F") pKa="";
#else if ($3 == "W") pKa="";
#else if ($3 == "N") pKa="";
#else if ($3 == "Q") pKa="";
#else if ($3 == "S") pKa="";
#else if ($3 == "T") pKa="";
#else if ($3 == "Y") pKa="";
#else if ($3 == "C") pKa="";
if ($3 == "D") pKa="3.65";
else if ($3 == "E") pKa="4.25";
else if ($3 == "K") pKa="10.53";
else if ($3 == "R") pKa="12.48";
else if ($3 == "H") pKa="6.00";
print ($0)"\t"pKa
if (($3 != "D")||($3 != "E")||($3 != "K")||($3 != "R")||($3 != "H")||($3 == "STOP")) pKa="";
}
