#!/usr/bin/bash
# your code goes after this 

if [ ! -f FungiDB-45_ScerevisiaeS288c.gff ]; then
    curl -O https://fungidb.org/common/downloads/Current_Release/ScerevisiaeS288c/gff/data/FungiDB-45_ScerevisiaeS288c.gff
fi

grep -E "\tgene\t" FungiDB-45_ScerevisiaeS288c.gff | cut -f7 | sort | uniq -c
#grep "gene" FungiDB-45_ScerevisiaeS288c.gff | grep -v 'mRNA' | wc -l

echo "Extra information about types of features:"
grep -v "^#" FungiDB-45_ScerevisiaeS288c.gff | cut -f3 | sort | uniq -c | sort -nr
