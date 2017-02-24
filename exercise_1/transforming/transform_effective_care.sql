DROP TABLE hospital_scoring;

CREATE TABLE scoring

AS SELECT
  provider_id,
  hospital_name,
  state,
  measure_id
FROM effective_care
;
  
