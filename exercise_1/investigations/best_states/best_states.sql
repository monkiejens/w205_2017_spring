DROP TABLE best_states;

CREATE TABLE best_states

AS SELECT
  m.state,
  ROUND(AVG(m.mortality_comparison + m.safety_comparison + m.patient_comparison + m.timeliness_comparison + e.score), 3) AS avg_state_score,
  ROUND(SUM(m.mortality_comparison + m.safety_comparison + m.patient_comparison + m.timeliness_comparison + e.score), 0) AS total_state_score  

FROM my_hospitals m
JOIN hospital_effectiveness e
ON (m.state=e.state)
GROUP BY m.state
ORDER BY avg_state_score DESC
;


SELECT * from best_states limit 10;
