DROP TABLE hospital_effectiveness;

CREATE TABLE hospital_effectiveness

AS SELECT
  provider_id,
  hospital_name,
  state,
  measure_id
FROM effective_care
;
  
