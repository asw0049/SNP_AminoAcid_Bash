{
if ($2 == "T") RNA="A";
else if ($2 == "A") RNA="U";
else if ($2 == "C") RNA="G";
else if ($2 == "G") RNA="C";
print ($0)"\t"RNA
}
