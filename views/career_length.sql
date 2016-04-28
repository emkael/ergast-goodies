-- debut date for every driver (date of a race for the event driver was first entered)
DROP VIEW IF EXISTS debut_dates;
CREATE VIEW debut_dates AS
   SELECT drivers.driverId, drivers.driverRef, MIN(races.date) AS `date`
   FROM drivers
      JOIN results ON results.driverId = drivers.driverId
      JOIN races ON races.raceId = results.raceId
   GROUP BY drivers.driverId;

-- last race date for every driver (date of a race for the event driver was last entered)
DROP VIEW IF EXISTS last_race_dates;
CREATE VIEW last_race_dates AS
   SELECT drivers.driverId, drivers.driverRef, MAX(races.date) AS `date`
   FROM drivers
      JOIN results ON results.driverId = drivers.driverId
      JOIN races ON races.raceId = results.raceId
   GROUP BY drivers.driverId;

-- carrer length (in days) for each driver
DROP VIEW IF EXISTS career_length;
CREATE VIEW career_length AS
   SELECT drivers.driverId,
      COUNT(DISTINCT(results.raceId)) AS career_races,
      DATEDIFF(last_race_dates.date, debut_dates.date) + 1 AS career_days,
      DATEDIFF(debut_dates.date, drivers.dob) AS first_race_age,
      DATEDIFF(last_race_dates.date, drivers.dob) AS last_race_age
    FROM results
       JOIN drivers ON drivers.driverId = results.driverId
       JOIN debut_dates ON drivers.driverId = debut_dates.driverId
       JOIN last_race_dates ON drivers.driverId = last_race_dates.driverId
    GROUP BY results.driverId;
