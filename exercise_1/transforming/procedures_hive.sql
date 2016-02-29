CREATE TABLE procedure_rankings AS SELECT
 surveys_responses.*, hospitals.provider ID
FROM
  surveys_responses
  LEFT OUTER JOIN 
  hospitals
ON
 (surveys_responses.hospitalName = hospitals.hospitalName)
;

    
  