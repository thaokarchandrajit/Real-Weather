CREATE TABLE aug2005_raw AS 
			
			SELECT
				uid,year,month,day,fog,rain,snow,hail,thunder,tornado,lat,long
   
			FROM
				anomalies

			WHERE
				year = 2005 and month = 08
			
			ORDER BY
				month,day; 
