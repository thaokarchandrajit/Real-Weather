CREATE TABLE aug1960_raw AS 
			
			SELECT
				uid,year,month,day,fog,rain,snow,hail,thunder,tornado,lat,long
   
			FROM
				anomalies

			WHERE
				year = 1960 and month = 08
			
			ORDER BY
				month,day; 
