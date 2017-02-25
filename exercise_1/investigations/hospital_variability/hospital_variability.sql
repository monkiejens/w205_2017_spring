DROP TABLE procedure_variability;

CREATE TABLE procedure_variability

AS SELECT
  measure_id,
  measure_name,
  ROUND(STDDEV_POP(score),3) as proc_var
FROM procedures_readmission
WHERE denominator > 100 
GROUP BY measure_id, measure_name
ORDER BY proc_var DESC
;


SELECT * from procedure_variability limit 10;
