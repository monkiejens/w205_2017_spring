DROP TABLE survey;
CREATE TABLE survey
AS SELECT
  provider_id,
  hospital_name,
  ROUND(AVG(nurses_achievement + nurses_improvement + nurses_dimension), 3) AS nurse_rating,
  ROUND(AVG(doctors_achievement + doctors_improvement + doctors_dimension), 3) AS doctors_rating,
  ROUND(AVG(staff_achievement + staff_improvement + staff_dimension), 3) AS hospital_staff_rating,
  ROUND(AVG(pain_achievement + pain_improvement + pain_dimension), 3) AS pain_rating,
  ROUND(AVG(communication_achievement + communication_improvement + communication_dimension), 3) AS communication_rating,
  ROUND(AVG(cleanliness_achievement + cleanliness_improvement + cleanliness_dimension), 3) AS cleanliness_rating,
  ROUND(AVG(discharge_achievement + discharge_improvement + discharge_dimension), 3) AS discharge_rating,
  ROUND(AVG(overall_achievement + overall_improvement + overall_dimension), 3) AS overall_rating
FROM survey_scores
GROUP BY provider_id, hospital_name
;


DROP TABLE survey_avg;
CREATE TABLE survey_avg
AS SELECT
  provider_id,
  hospital_name,
  AVG(nurse_rating + doctors_rating + hospital_staff_rating + pain_rating + communication_rating + cleanliness_rating + discharge_rating + overall_rating) AS hospital_survey_avg
FROM survey
GROUP BY provider_id, hospital_name
limit 10
;



DROP TABLE hospital_proc_var;
CREATE TABLE hospital_proc_var
AS SELECT
  provider_id,
  hospital_name,
  ROUND(STDDEV_POP(score),3) AS hosp_proc_var
FROM procedures_readmission
GROUP BY provider_id, hospital_name
;



DROP TABLE correlation_hospitals;
CREATE TABLE correlation_hospitals
AS SELECT
  s.provider_id,
  s.hospital_name,
  s.hospital_survey_avg AS survey_avg,
  b.total_hospital_avg AS hospital_avg
FROM survey_avg s
JOIN best_hospitals b
ON (s.provider_id=b.provider_id)
GROUP BY s.provider_id, s.hospital_name, s.hospital_survey_avg, b.total_hospital_avg
;


DROP TABLE correlation_proc;
CREATE TABLE correlation_proc
AS SELECT
  q.provider_id,
  q.hospital_name,
  q.hospital_survey_avg AS survey_avg,
  r.hosp_proc_var AS proc_var
FROM survey_avg q
JOIN hospital_proc_var r
ON (q.provider_id=r.provider_id)
GROUP BY q.provider_id, q.hospital_name, q.hospital_survey_avg, r.hosp_proc_var
;


select CORR(survey_avg, hospital_avg) AS survey_hosp_corr FROM correlation_hospitals WHERE hospital_avg IS NOT NULL AND survey_avg IS NOT NULL ORDER BY survey_hosp_corr;

select CORR(survey_avg, proc_var) AS survey_proc_corr FROM correlation_proc WHERE survey_avg IS NOT NULL AND proc_var IS NOT NULL ORDER BY survey_proc_corr
;

