CREATE TABLE state_quality AS SELECT
 hospitals.state, readmissions.score, effective_care.score
FROM
  hospitals INNER JOIN readmissions  
ON
  (hospitals.providerID = readmissions.providerID) 
INNER JOIN
   effective_care
ON 
   (effective_care.providerID = hospitals.providerID)
