#!/bin/bash

#save my current directory
MY_CWD=$(pwd)

#create directories (staging and exercise_1)
#change directory to staging exercise_1
mkdir ~/staging
mkdir ~/staging/exercise_1
cd ~/staging/exercise_1

#get files from https://data.medicare.gov/data/hospital_compare
#unzip files
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip
unzip medicare_data.zip

#hospital.csv
#get General Hospital Information file and rename
OLD_FILE="Hospital General Information.csv"

#check the first few entries - note the first line is column headers
head -5 "$OLD_FILE"

#remove the headers and rename as hospitals.csv
tail -n +2 "$OLD_FILE" > hospitals.csv


#effective_care.csv
#same steps as for hospital.csv
OLD_FILE="Timely and Effective Care - Hospital.csv"
head -5 "$OLD_FILE"
tail -n +2 "$OLD_FILE" > effective_care.csv


#readmissions.csv
OLD_FILE="Readmissions and Deaths - Hospital.csv"
head -5 "$OLD_FILE"
tail -n +2 "$OLD_FILE" > readmissions.csv


#Measures.csv
OLD_FILE="Measure Dates.csv"
head -5 "$OLD_FILE"
tail -n +2 "$OLD_FILE" > Measures.csv


#surveys_responses.csv
#used the medicare files downloaded from website - has a different file name from the one listed in the exercise
OLD_FILE="hvbp_hcahps_11_10_2016.csv"
head -5 "$OLD_FILE"
tail -n +2 "$OLD_FILE" > surveys_responses.csv


#create HDFS directory for hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare

#create subdirectories under hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/Measures
hdfs dfs -mkdir /user/w205/hospital_compare/surveys_responses

#move files into hdfs
hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care
hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmissions
hdfs dfs -put Measures.csv /user/w205/hospital_compare/Measures
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare/surveys_responses

#check to makes sure file has been moved
hdfs dfs -ls /user/w205/hospital_compare

#change directory back to main
cd $MY_CWD

#clean exit
exit


