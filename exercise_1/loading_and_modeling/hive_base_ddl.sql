DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string, 
  address string,
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
LOCATION '/user/w205/hospital_compare'
;

DROP TABLE Effective_Care;

CREATE EXTERNAL TABLE Effective_Care
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  condition string,
  measure_ID string,
  measure_name string,
  score string,
  footnote string,
  measure_start_date string,
  measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "seperatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare'
;


