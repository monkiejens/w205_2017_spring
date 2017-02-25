
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
