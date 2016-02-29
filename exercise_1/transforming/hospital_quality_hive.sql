CREATE TABLE hospital_quality AS SELECT hospitals.providerID, hospitals.hospitalname, readmissions.score, effective_care.score
FROM
   hospitals LEFT OUTER JOIN readmissions
ON
   (hospitals.providerID = readmissions.providerID) LEFT OUTER JOIN effective_care 
ON 
    (effective_care.providerID = readmissions.providerID)
