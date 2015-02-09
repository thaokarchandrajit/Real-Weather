for year in {1929..2009}; do
	

	cat $year.csv > tmp_$year.csv
	
	./cleanup.sh $year
	
	echo "merging " $year
	tail -n +2 cleaned_$year.csv >> cleaned_small.csv
	echo "done with " $year
	
	rm ./cleaned_$year.csv 
done
