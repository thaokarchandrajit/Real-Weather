#/usr/bin/bash
year=$1


cut -d "," -f 1 tmp_$year.csv > tmp1.csv 

cut -d "," -f 2 tmp_$year.csv > tmp2.csv 

echo "cutting " $year
#This loops through the 1st file, t1.txt, and stores it in an array, a[FNR]. The FNR is the index 
#into that array based on the line number each line was in, in file t1.txt. Afterwards, it loops 
#through the 2nd file, t2.txt, and prints the line corresponding line from the 1st file along with the 2nd file.

echo "Joining Cols " 

awk 'NR==FNR{a[FNR]=$0;next} {print a[FNR] $0}'  tmp1.csv tmp2.csv > newid.csv

echo "combining " 
paste -d, ./newid.csv ./$year.csv > cleaned_$year.csv


rm ./tmp1.csv | rm ./tmp2.csv | rm newid.csv

rm ./tmp_$year.csv
