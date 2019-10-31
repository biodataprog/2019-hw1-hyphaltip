#!/usr/bin/bash

curl -O ftp://ftp.ncbi.nih.gov//blast/db/FASTA/vector.gz

# run on an uncompressed file
gunzip -k vector.gz
grep -c ">" vector

# count directly from the compressed file
zgrep -c ">" vector.gz

curl ftp://ftp.ncbi.nih.gov//blast/db/FASTA/vector.gz | zgrep -c ">"
