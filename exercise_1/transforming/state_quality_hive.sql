CREATE TABLE state_quality AS SELECT
 hospitals.state, readmissions.score, effective_care.score
FROM
  hospitals LEFT OUTER JOIN readmissions  
ON
  (hospitals.providerID = readmissions.providerID) 
LEFT OUTER JOIN
   effective_care
ON 
   (effective_care.providerID = hospitals.providerID)
