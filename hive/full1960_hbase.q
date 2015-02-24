CREATE TABLE full1960_hbase(
				key string,
				fog string,
				rain string,
				snow string,
				hail string,
				thunder string,
				tornado string,
				long string,
				lat string)
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,c:fog,c:rain,c:snow,c:hail,c:thunder,c:tornado,c:lat,c:long");


INSERT OVERWRITE TABLE full1960_hbase SELECT * from full1960_combinedkey;
