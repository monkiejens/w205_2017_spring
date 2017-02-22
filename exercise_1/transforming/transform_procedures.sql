DROP TABLE procedures;

CREATE TABLE procedures
AS SELECT
  provider_id,
  hospital_name,
  state,
  measure_id,
  denominator,
  score,
  lower_estimate,
  higher_estimate
FROM readmissions
;
