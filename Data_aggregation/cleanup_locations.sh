#/usr/bin/bash



cut -d "," -f 1 ish-history.csv > tmp1_ish.csv 

cut -d "," -f 2 ish-history.csv > tmp2_ish.csv 

#This loops through the 1st file, t1.txt, and stores it in an array, a[FNR]. The FNR is the index 
#into that array based on the line number each line was in, in file t1.txt. Afterwards, it loops 
#through the 2nd file, t2.txt, and prints the line corresponding line from the 1st file along with the 2nd file.

awk 'NR==FNR{a[FNR]=$0;next} {print a[FNR] $0}'  tmp1_ish.csv tmp2_ish.csv > newid_ish.csv


paste -d, ./newid_ish.csv ./ish-history.csv > tmp.csv

#The -F" makes awk separate the line at the double-quote signs, which means every other field will be the inter-quote text. 
#The for-loop runs gsub, short for globally substitute, on every other field, replacing comma  with nothing . 
#The 1 at the end invokes the default code-block: { print $0 }.

awk -F'"' -v OFS='' '{ for (i=2; i<=NF; i+=2) gsub(",", "", $i) } 1' tmp.csv > newtest_ish_history.csv

#remove double quotes
tr -d '"' < newtest_ish_history.csv> tmp2.csv

#Add data_n/a for empty cells
awk -F, '{for(i=1;i<=NF;++i){if($i==""){printf "data_n/a"}else{printf $i} if(i<NF)printf ","} printf "\n"}' tmp2.csv > locations_cleaned.csv

rm ./tmp1_ish.csv | rm ./tmp2_ish.csv | rm newtest_ish_history.csv | rm newid_ish.csv | rm  tmp.csv | rm tmp2.csv

