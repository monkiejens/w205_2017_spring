DROP TABLE IF EXISTS my_hospitals;

CREATE TABLE my_hospitals 
AS SELECT 
  provider_id,
  hospital_name,
  state,
  CASE WHEN hospital_overall_rating LIKE "BELOW%" THEN 0
  WHEN hospital_overall_rating LIKE "SAME%" THEN 1
  WHEN hospital_overall_rating LIKE "ABOVE%" THEN 2
  AS overall_rating,
  CASE WHEN mortality_national_comparison LIKE "BELOW%" THEN 0
  WHEN mortality_national_comparison LIKE "SAME%" THEN 1
  WHEN mortality_national_comparison LIKE "ABOVE%" THEN 2
  AS mortality_comparison,
  CASE WHEN safety_national_comparison LIKE "BELOW%" THEN 0
  WHEN safety_national_comparison LIKE "SAME%" THEN 1
  WHEN safety_national_comparison LIKE "ABOVE%" THEN 2
  AS safety_comparison,
  CASE WHEN readmission_national_comparison LIKE "BELOW%" THEN 0
  WHEN readmission_national_comparison LIKE "SAME%" THEN 1
  WHEN readmission_national_comparison LIKE "ABOVE%" THEN 2
  AS readmission_comparison,
  CASE WHEN patient_experience_national_comparison LIKE "BELOW%" THEN 0
  WHEN patient_experience_national_comparison LIKE "SAME%" THEN 1
  WHEN patient_experience_national_comparison LIKE "ABOVE%" THEN 2
  AS patient_comparison,
  CASE WHEN timeliness_care_national_comparison LIKE "BELOW%" THEN 0
  WHEN timeliness_care_national_comparison LIKE "SAME%" THEN 1
  WHEN timeliness_care_national_comparison LIKE "ABOVE%" THEN 2
  AS timeliness_comparison,
FROM hospitals
WHERE hospital_overall_rating NOT LIKE "Not%",
WHERE mortality_national_comparison NOT LIKE "Not%",
WHERE safety_national_comparison NOT LIKE "Not%",
WHERE readmission_national_comparison NOT LIKE "Not%",
WHERE patient_experience_national_comparison NOT LIKE "Not%",
WHERE timeliness_care_national_comparison NOT LIKE "Not%"
;
