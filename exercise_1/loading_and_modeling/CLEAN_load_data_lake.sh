ave my current working directory
MY_CWD=$(pwd)

#empty and remove staging directories
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1
rmdir ~/staging

#hospital.csv
#get General Hospital Information file and rename
OLD_FILE="Hospital General Information.csv"


#remove HDFS directory for hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare


#move files into hdfs
hdfs dfs -rm /user/w205/hospital_compare/hospitals.csv
hdfs dfs -rm /user/w205/hospital_compare/effective_care.csv
hdfs dfs -rm /user/w205/hospital_compare/readmissions.csv
hdfs dfs -rm /user/w205/hospital_compare/Measures.csv
hdfs dfs -rm /user/w205/hospital_compare/surveys_responses.csv

#remove HDFS directory
hdfs dfs -rmdir /user/w205/hospital_compare

#change directory back to main
cd $MY_CWD

#clean exit
exit

