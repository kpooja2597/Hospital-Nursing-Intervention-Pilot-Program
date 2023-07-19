
#Q4.a1
SELECT b.business_name AS Hospital_name, sum(bf.license_beds) AS Total_license_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY Total_license_beds DESC
LIMIT 10;

#Q4.a2
SELECT b.business_name AS Hospital_name, sum(bf.census_beds) AS Total_census_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY Total_census_beds DESC
LIMIT 10;

#Q4.a3
SELECT b.business_name AS Hospital_name, sum(bf.staffed_beds) AS Total_staffed_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY Total_staffed_beds DESC
LIMIT 10;

#Q5.a1
SELECT b.business_name AS Hospital_name, sum(bf.license_beds) AS Total_license_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
HAVING sum(CASE WHEN bt.bed_id=4 THEN 1 ELSE 0 END)>=1
AND sum(CASE WHEN bt.bed_id=15 THEN 1 ELSE 0 END)>=1
ORDER BY Total_license_beds DESC
LIMIT 10;

#Q5.a2
SELECT b.business_name AS Hospital_name, sum(bf.census_beds) AS Total_census_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
HAVING sum(CASE WHEN bt.bed_id=4 THEN 1 ELSE 0 END)>=1
AND sum(CASE WHEN bt.bed_id=15 THEN 1 ELSE 0 END)>=1
ORDER BY Total_census_beds DESC
LIMIT 10;

#Q5.a3
SELECT b.business_name AS Hospital_name, sum(bf.staffed_beds) AS Total_staffed_beds
FROM business b
INNER JOIN bed_fact bf ON b.ims_org_id=bf.ims_org_id
INNER JOIN bed_type bt ON bf.bed_id=bt.bed_id
WHERE bt.bed_id IN (4,15)
GROUP BY b.business_name
HAVING sum(CASE WHEN bt.bed_id=4 THEN 1 ELSE 0 END)>=1
AND sum(CASE WHEN bt.bed_id=15 THEN 1 ELSE 0 END)>=1
ORDER BY Total_staffed_beds DESC
LIMIT 10;



