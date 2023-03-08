/* What Schools offer Web Development? */

SELECT *
FROM final_schema.courses
WHERE courses.courses LIKE '%Web Dev%';

/* Let's see if we're not missing anything... */
SELECT *
FROM final_schema.courses
WHERE courses.courses
LIKE '%web%'
OR courses.courses
LIKE '%dev%';

/* Well, iOS Development is not Web Development...
Our final candidate list should be this... */

SELECT *
FROM final_schema.courses
WHERE courses.courses
LIKE '%web dev%'
AND courses.courses
NOT LIKE '%part%';

/* We have ironhack and brainstation. Let's check the campuses and the weather */

SELECT */*id, `country.name`, `city.keyword`, school*/
FROM final_schema.locations
WHERE school = 'ironhack'
OR school = 'brainstation';

CREATE TEMPORARY TABLE chico_choices
SELECT * FROM
(SELECT id, `country.name`, `city.keyword`, school
FROM locations
WHERE school = 'ironhack'
OR school = 'brainstation') AS ih_bs_cities
INNER JOIN sunshine
ON sunshine.location_id = ih_bs_cities.id;

SELECT * FROM chico_choices
ORDER BY year ASC
LIMIT 3;

/* Seems like the least sunny option (and hopefully more rainy) is the Ironhack in Berlin */