Real Time Weather Anomaly Detector
==================================
## A data pipeline to monitor global weather anomalies in real-time using the NOAA sensor network

*The documentation of the project is a continuing process*

Table of Contents:

1. [Motivation](README.md#1-motivation)
2. [Data Pipeline](README.md#2-data pipline)
3. [Operation](README.md#3-operation) 
4. [Install](README.md#4-instal)
5. [Schema and code samples](README.md#5-schema-and-code-sample)

## 1. Motivation

The National Oceanic Atmospheric Agency [(NOAA)](http://www.noaa.gov/) tracks global weather using a network of about 12000 - 15000 sensors distributed globally. Global weather is one of the most dynamic systems in existance on the planet. The effect of disruptions caused by weather anomalies have far reaching consequences on all aspects human civilization. The impact of weather disruptions can be felt on global econmoy, food production, loss of life and global transport network etc.

![](Images/Global_coverage.png "Locations of global monitoring stations ")

The motivation behind developing the proof-of-concept pipeline can be summerized as follows:

a. The project aims to provide a solution to track the location and occurances extreme weather events or anomalies in real-time. These  capabilities can be extremely useful for generating rapid response to the damage caused by weather anomalies. 

2. Provide a unified platform to integrate real-time data streams coming from a very large number of monitoring stations to simplify monitoring of weather anomalies.

3. Provide a way to incorporate incoming real-time data streams into the historical weather data. This solution can be can be very useful for data scientists and climatologists to test climate models. The ease of querying such a large and rich data set can result in shorter testing times for a particular model and faster iterating through the models.

4. In light of increasing weather disturbances caused by global climate change, the project aims to provide  the local governments with an API which can be used to asses and project the impact of weather anomalies. 



## B. Data Pipeline


## 3. Install

See the [install directions](INSTALL.md) for installation instructions

## 4. Schema and Code Sample

See the [schema descriptions and code samples](SCHEMA.md) for description on the schemas and example code snippets.
