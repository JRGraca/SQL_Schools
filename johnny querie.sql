/* Choosing data analytics courses
which are *NOT* part-time.
Also removes Track Prep from springboard (irrelevant)
Creates a temp table for ease of access*/

CREATE TEMPORARY TABLE da_courses
SELECT *
FROM final_schema.courses
WHERE ((courses.courses
LIKE '%data%'
OR courses.courses
LIKE '%analytics%')
AND (courses.courses
NOT LIKE '%part%'
OR courses.courses
NOT LIKE '%prep%'));

-- DROP TEMPORARY TABLE final_schema.da_courses;

SELECT *
FROM da_courses;