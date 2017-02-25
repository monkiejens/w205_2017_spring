DROP TABLE best_states;

CREATE TABLE best_states

AS SELECT
  r.state,
  ROUND(SUM(r.hospital_avg_score + e.score), 0) AS total_state_score,
  ROUND(AVG(r.hospital_avg_score + e.score), 0) AS avg_state_score

FROM hospital_rating r
JOIN hospital_effectiveness e
GROUP BY r.state
ORDER BY total_state_score DESC
;


SELECT * from best_states limit 10;
