DROP TABLE procedures_readmission;

CREATE TABLE procedures_readmission

AS SELECT
  provider_id,
  hospital_name,
  measure_id,
  measure_name,
  CAST(denominator AS int),
  CAST(score AS int)
FROM readmissions
;
