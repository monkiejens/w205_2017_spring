DROP TABLE hospital_rating;

CREATE TABLE hospital_rating

AS SELECT
  m.provider_id,
  m.hospital_name,
  m.state,
  AVG(m.mortality_comparison + m.safety_comparison + m.patient_comparison + m.timeliness_comparison + e.score) AS hospital_avg_score,
  SUM(m.mortality_comparison + m.safety_comparison + m.patient_comparison + m.timeliness_comparison + e.score) AS hospital_total_score
FROM my_hospitals m 
JOIN hospital_effectiveness e
ON (m.provider_id = e.provider_id)
GROUP BY m.provider_id, m.hospital_name, m.state
ORDER BY hospital_avg_score DESC
;



DROP TABLE best_hospitals;

CREATE TABLE best_hospitals
 
AS SELECT
  r.provider_id,
  r.hospital_name,
  r.state,
  ROUND(AVG(p.score + r.hospital_avg_score), 0) AS total_hospital_avg,
  ROUND(STDDEV_POP(total_hospital_avg),3) AS total_hospital_std,
  SUM(p.score + r.hospital_total_score) AS total_hospital_score
FROM hospital_rating r
JOIN procedures_readmission p
ON (r.provider_id = p.provider_id)
GROUP BY r.provider_id, r.hospital_name, r.state
ORDER BY total_hospital_avg DESC
;


SELECT * from best_hospitals limit 10;

