SELECT * FROM final_schema.courses
WHERE courses LIKE '%security%';

/* Mentioning Part-Time: */
SELECT * FROM final_schema.courses
WHERE courses LIKE '%security%'
AND courses LIKE '%part%';

SELECT * FROM final_schema.courses
WHERE courses LIKE '%remote%';

SELECT * FROM final_schema.locations
WHERE school = 'evolve-security-academy';

/* Unfortunately, there is only the Ironhack bootcamp. We don't have information on schedules for the other programs. More data is needed.

But if Jo chooses Ironhack... where? */

SELECT * FROM final_schema.locations
WHERE school = 'ironhack';

CREATE TEMPORARY TABLE sunshine_hours
SELECT * FROM (
SELECT id, `country.name`, `city.keyword`
FROM final_schema.locations
WHERE school = 'ironhack') AS ironhack_cities
INNER JOIN sunshine
ON ironhack_cities.id = sunshine.location_id;

SELECT * FROM sunshine_hours
ORDER BY Year DESC;

/* The most sunny place with an Ironhack Campus where Jo could study is Lisbon,
with an average 2806 hours of sunshine per Year */