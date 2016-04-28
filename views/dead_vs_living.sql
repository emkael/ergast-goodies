-- dead drivers count vs living drivers count for each race
DROP VIEW IF EXISTS dead_vs_living;
CREATE VIEW dead_vs_living AS
SELECT CONCAT(races.year, " ", races.name) race, races.date,
       COUNT(debut_dates.driverId) overall,
       SUM(drivers.dod IS NULL OR drivers.dod >= races.date) living,
       SUM(drivers.dod < races.date) dead
   FROM races
      JOIN debut_dates ON debut_dates.date <= races.date
      JOIN drivers ON debut_dates.driverId = drivers.driverId
   GROUP BY races.raceId;

-- average debut age vs average lifespan for each race
DROP VIEW IF EXISTS debut_age_vs_lifespan;
CREATE VIEW debut_age_vs_lifespan AS
SELECT CONCAT(races.year, " ", races.name) race, races.date,
       AVG(DATEDIFF(debut_dates.date, drivers.dob)) debut_age,
       AVG(DATEDIFF(LEAST(races.date, COALESCE(drivers.dod, races.date)), drivers.dob)) lifespan
   FROM races
      JOIN debut_dates ON debut_dates.date <= races.date
      JOIN drivers ON debut_dates.driverId = drivers.driverId
   GROUP BY races.raceId;
