{
if ($2 == "T") RNA="U";
else if ($2 == "A") RNA="A";
else if ($2 == "C") RNA="C";
else if ($2 == "G") RNA="G";
print ($0)"\t"RNA
}
