SELECT * FROM noc;

SELECT * FROM athlete;

-- Join tables on county_id
SELECT athlete.athlete_ID, athlete.name, athlete.age, athlete.team, athlete.noc_id, athlete.year, athlete.season, athlete.city,  athlete.sport, athlete.age_ranges, noc.region
FROM noc
JOIN athlete
ON noc.noc_id = athlete.noc_id;