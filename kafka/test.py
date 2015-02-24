# Kafka producer that reads the input data in a loop in order to simulate real time events
import os
import sys
from kafka import KafkaClient, KeyedProducer, SimpleConsumer
from datetime import datetime
import time
import fileinput
kafka = KafkaClient("54.67.107.239:6667")
source_file = '/home/ubuntu/anomalies.txt'

def genData(topic):
    producer = KeyedProducer(kafka)
    while True:

	     for line in fileinput.input(source_file): 
               key = line.split("\t")[0]
	       print key
	       print line.rstrip()
               producer.send(topic, key, line.rstrip()) 
	       time.sleep(0.1)  # Creating some delay to allow        
             fileinput.close()

genData("Anomaly")
