#!/bin/bash

#save my current working directory
MY_CWD=$(pwd)

#empty and remove staging directories
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1
rmdir ~/staging










#remove files into hdfs
hdfs dfs -rm /user/w205/hospital_compare/hospitals/hospitals.csv
hdfs dfs -rm /user/w205/hospital_compare/effective_care/effective_care.csv
hdfs dfs -rm /user/w205/hospital_compare/readmissions/readmissions.csv
hdfs dfs -rm /user/w205/hospital_compare/Measures/Measures.csv
hdfs dfs -rm /user/w205/hospital_compare/surveys_responses/surveys_responses.csv

#remove HDFS directories
hdfs dfs -rmdir /user/w205/hospital_compare/hospitals
hdfs dfs -rmdir /user/w205/hospital_compare/effective_care
hdfs dfs -rmdir /user/w205/hospital_compare/readmissions
hdfs dfs -rmdir /user/w205/hospital_compare/Measures
hdfs dfs -rmdir /user/w205/hospital_compare/surveys_responses
hdfs dfs -rmdir /user/w205/hospital_compare

#change directory back to main
cd $MY_CWD

#clean exit
exit


