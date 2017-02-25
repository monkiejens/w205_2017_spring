DROP TABLE procedures_readmission;

CREATE TABLE procedures_readmission

AS SELECT
  provider_id,
  hospital_name,
  state,
  measure_id,
  CAST(denominator AS int),
  CAST(score AS int),
  CAST(lower_estimate AS int),
  CAST(higher_estimate AS int)
FROM readmissions
;
