CREATE TABLE hospital_quality AS SELECT hospitals.providerID, hospitals.hospitalname, readmissions.rscore, effective_care.score
FROM
   hospitals INNER JOIN readmissions
ON
   (hospitals.providerID = readmissions.providerID) LEFT OUTER JOIN effective_care 
ON 
    (effective_care.providerID = readmissions.providerID)
