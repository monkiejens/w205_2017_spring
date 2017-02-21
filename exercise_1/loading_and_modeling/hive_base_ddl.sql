DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string, 
  address varchar,
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



DROP TABLE Effective_Care;

CREATE EXTERNAL TABLE Effective_Care
(
  provider_id string,
  hospital_name string,
  address varchar,
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
LOCATION '/user/w205/hospital_compare/effective_care'
;



DROP TABLE Readmissions;

CREATE EXTERNAL TABLE Readmissions
(
  provider_id string,
  hospital_name string,
  address varchar,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  measure_name string,
  measure_ID string,
  compared_to_national string,
  denominator string,
  score string,
  lower_estimate string,
  higher_estimate string,
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
LOCATION '/user/w205/hospital_compare/readmissions'
;


DROP TABLE Measures;

CREATE EXTERNAL TABLE Measures
(
  measure_name string,
  measure_ID string,
  measure_start_quarter string,
  measure_start_date string,
  measure_end_quarter string,
  measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "seperatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/Measures'
;

DROP TABLE Surveys_Responses;

CREATE EXTERNAL TABLE Surveys_Responses
(
  provider_id string,
  hospital_name string,
  address varchar,
  city string,
  state string,
  zip_code string,
  county_name string,
  communication_with_nurses_floor string,
  communication_with_nurses_achievement_threshold string,
  communications_with_nurses_benchmark string,
  communication_with_nurses_baseline_rate string,
  communication_with_nurses_performance_rate string,
  communication_with_nurses_achievement_points string,
  communication_with_nurses_improvement_points string,
  communication_with_nurses_dimension_score string,
  communication_with_doctors_floor string,
  communication_with_doctors_achievement_threshold string;
  communication_with_doctors_benchmark string,
  communication_with_doctors_baseline_rate string;
  communication_with_doctors_performance_rate string,
  communication_with_doctors_achievement_points string,
  communication_with_doctors_improvement_points string,
  communication_with_doctors_dimension_score string,
  responsiveness_of_hospital_staff_floor string,
  responsiveness_of_hospital_staff_achievement_threshold string,
  responsiveness_of_hospital_staff_benchmark string,
  responsiveness_of_hospital_staff_baseline_rate string,
  responsiveness_of_hospital_staff_performance_rate string,
  responsiveness_of_hospital_staff_achievement_points string,
  responsiveness_of_hospital_staff_improvement_points string,
  responsiveness_of_hospital_staff_dimension_score string,
  pain_management_floor string,
  pain_management_achievement_threshold string,
  pain_management_benchmark string,
  pain_management_baseline_rate string,
  pain_management_performance_rate string,
  pain_management_achievement_points string,
  pain_management_improvement_points string,
  pain_management_dimension_score string,
  communication_about_medicines_floor string,
  communication_about_medicines_achievement_threshold string,
  communication_about_medicines_benchmark string,
  communication_about_medicines_baseline_rate string,
  communication_about_medicines_performance_rate string,
  communication_about_medicines_achievement_points string,
  communication_about_medicines_improvement_points string,
  communication_about_medicines_dimension_score string,
  cleanliness_and_quietness_of_hospital_environment_floor string,
  cleanliness_and_quietness_of_hospital_environment_achievement_threshold string,
  cleanliness_and_quietness_of_hospital_environment_benchmark string,
  cleanliness_and_quietness_of_hospital_environment_baseline_rate string,
  cleanliness_and_quietness_of_hospital_environment_performance_rate string,
  cleanliness_and_quietness_of_hospital_environment_achievement_points string,
  cleanliness_and_quietness_of_hospital_environment_improvement_points string,
  cleanliness_and_quietness_of_hospital_environment_dimension_score string,
  discharge_information_floor string,
  discharge_information_achievement_threshold string,
  discharge_information_benchmark string,
  discharge_information_baseline_rate string,
  discharge_information_performance_rate string,
  discharge_information_achievement_points string,
  discharge_information_improvement_points string,
  discharge_information_dimension_score string,
  overall_rating_floor string,
  overall_rating_achievement_threshold string,
  overall_rating_benchmark string,
  overall_rating_baseline_rate string,
  overall_rating_performance_rate string,
  overall_rating_achievement_points string,
  overall_rating_improvement_points string,
  overall_rating_dimension_score string,
  hcahps_base_score string,
  hcahps_consistency_score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "seperatorChar"=',',
  "quoteChar"='"',
  "escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys_responses'
;


























