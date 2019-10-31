#!/usr/bin/bash
# your code goes next

if [ ! -f rice_random_exons.bed ]; then
    curl -O https://raw.githubusercontent.com/biodataprog/GEN220/master/data/rice_random_exons.bed
fi

TOTAL=0
awk '{print $3 - $2}' rice_random_exons.bed > lengths.txt
while read LENGTH
do
#    echo "LENGTH IS $LENGTH"
    TOTAL=$(expr $TOTAL + $LENGTH)
done < lengths.txt

echo "TOTAL EXON LEN IS $TOTAL"
						    
