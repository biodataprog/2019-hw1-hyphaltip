# 2019_hw1_template
2019 Homework Homework 1

1. Write a script called `download_count.sh` which does the following.
   * Download the data file from this URL ftp://ftp.ncbi.nih.gov//blast/db/FASTA/vector.gz from NCBI using a tool like curl, wget
   * Print out the count of the number of FASTA format sequences in this file (https://en.wikipedia.org/wiki/FASTA_format) - each record starts with a ">". Use a tool like `grep` to find matches. Remember you have to uncompress the file or read the data from the compressed file.
   
2. Write a script called `summary_exons.sh` which summarizes the total length of exons in the file [data/rice_random_exons.bed](https://raw.githubusercontent.com/biodataprog/GEN220/master/data/rice_random_exons.bed)
   * read in the file in a unix loop, remember the `while` loop structure.
   * use a loop structure to read each line
   * add up the values into a variable. Remember the `expr` tool.
   
3. Write a script called `strand_gene_count.sh` to calculate the number of genes that are on the + and - strand in the file. 
  * https://fungidb.org/common/downloads/Current_Release/ScerevisiaeS288c/gff/data/FungiDB-45_ScerevisiaeS288c.gff
