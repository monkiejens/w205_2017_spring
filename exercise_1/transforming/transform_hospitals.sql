DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string,
  address varchar(500),
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  hospital_type string,
  hospital_ownership string,
  emergency_services string,
  meet_criteria string,
  hospital_overall_rating string,
  hospital_overall_rating_footnote string,
  mortality_national_comparison string,
  mortality_national_comparison_footnote string,
  safety_national_comparison string,
  safety_national_comparison_footnote string,
  readmission_national_comparison string,
  readmission_national_comparison_footnote string,
  patient_experience_national_comparison string,
  patient_experience_national_comparison_footnote string,
  effectiveness_care_national_comparison string,
  effectiveness_care_national_comparison_footnote string,
  timeliness_care_national_comparison string,
  timeliness_care_national_comparison_footnote string,
  efficient_use_medical_imaging_national_comparison string,
  efficient_use_medical_imaging_national_comparison_footnote string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "seperatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals'
;



DROP TABLE IF EXISTS my_hospitals;

CREATE TABLE my_hospitals 
AS SELECT 
  provider_id,
  hospital_name,
  state,
  CASE WHEN hospital_overall_rating LIKE "Below%" THEN 0
  WHEN hospital_overall_rating LIKE "Same%" THEN 1
  WHEN hospital_overall_rating LIKE "Above%" THEN 2
  END AS overall_rating,
  CASE WHEN mortality_national_comparison LIKE "Below%" THEN 0
  WHEN mortality_national_comparison LIKE "Same%" THEN 1
  WHEN mortality_national_comparison LIKE "Above%" THEN 2
  END AS mortality_comparison,
  CASE WHEN safety_national_comparison LIKE "Below%" THEN 0
  WHEN safety_national_comparison LIKE "Same%" THEN 1
  WHEN safety_national_comparison LIKE "Above%" THEN 2
  END AS safety_comparison,
  CASE WHEN readmission_national_comparison LIKE "Below%" THEN 0
  WHEN readmission_national_comparison LIKE "Same%" THEN 1
  WHEN readmission_national_comparison LIKE "Above%" THEN 2
  END AS readmission_comparison,
  CASE WHEN patient_experience_national_comparison LIKE "Below%" THEN 0
  WHEN patient_experience_national_comparison LIKE "Same%" THEN 1
  WHEN patient_experience_national_comparison LIKE "Above%" THEN 2
  END AS patient_comparison,
  CASE WHEN timeliness_care_national_comparison LIKE "Below%" THEN 0
  WHEN timeliness_care_national_comparison LIKE "Same%" THEN 1
  WHEN timeliness_care_national_comparison LIKE "Above%" THEN 2
  END AS timeliness_comparison
FROM hospitals
;
