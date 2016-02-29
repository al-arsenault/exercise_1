CREATE TABLE procedure_rankings AS SELECT
 surveys_responses.*, hospitals.provider ID
FROM
  surveys_responses
  INNER JOIN 
  hospitals
ON
 (surveys_responses.hospitalName = hospitals.hospitalName)
;

    
  
