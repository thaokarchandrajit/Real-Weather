create table hbase_combinedkey as 
	
			SELECT 
				CONCAT_WS('-',CAST(CONCAT(year,month,day) as string),uid),
				CAST(fog as string),
				CAST(rain as string),
				CAST(snow as string),
				CAST(hail as string),
				CAST(thunder as string),
				CAST(tornado as string),
				CAST((CAST( lat as double )/1000) as string) ,
				CAST((CAST( long as double )/1000) as string)  
			FROM 
				hbase_test;				
