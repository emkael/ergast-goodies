CREATE VIEW career_length AS
   SELECT drivers.driverId,
      COUNT(DISTINCT(results.raceId)) AS career_races,
      DATEDIFF(MAX(races.date), MIN(races.date)) + 1 AS career_days,
      DATEDIFF(MIN(races.date), drivers.dob) AS first_race_age,
      DATEDIFF(MAX(races.date), drivers.dob) AS last_race_age
    FROM results
       JOIN races ON races.raceId = results.raceId
       JOIN drivers ON drivers.driverId = results.driverId
    GROUP BY results.driverId;
