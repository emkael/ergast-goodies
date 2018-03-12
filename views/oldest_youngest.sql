-- first and last season (not full, any entry counts) for each driver
DROP VIEW IF EXISTS first_last_season;
CREATE VIEW first_last_season AS
       SELECT MIN(races.year) AS first_season, MAX(races.year) AS last_season,
              drivers.driverId AS driverId,
              CONCAT(drivers.forename, ' ', drivers.surname) AS driver
       FROM races
            JOIN results ON results.raceId = races.raceId
            JOIN drivers ON drivers.driverId = results.driverId
       GROUP BY drivers.driverId;

-- earliest and latest birth dates in each season among all the drivers
-- entered in a season, so in 1991 Schumacher is the youngest,
-- despite Hakkinen being younger than him on their respective debut races
DROP VIEW IF EXISTS youngest_oldest_birth_dates_in_season;
CREATE VIEW youngest_oldest_birth_dates_in_season AS
       SELECT races.year AS year,
              MIN(drivers.dob) AS oldest, MAX(drivers.dob) AS youngest
       FROM results
            JOIN drivers ON drivers.driverId = results.driverId
            JOIN races ON results.raceId = races.raceId
       GROUP BY races.year;

-- youngest and oldest drivers in each season
DROP VIEW IF EXISTS youngest_oldest_in_season;
CREATE VIEW youngest_oldest_in_season AS
       SELECT tmp.year AS year,
              tmp.oldest AS oldest,
              CONCAT(d1.forename, ' ', d1.surname) AS oldest_name,
              tmp.youngest AS youngest,
              CONCAT(d2.forename, ' ', d2.surname) AS youngest_name
       FROM youngest_oldest_birth_dates_in_season tmp
            JOIN drivers d1 ON d1.dob = tmp.oldest
            JOIN drivers d2 ON d2.dob = tmp.youngest;

-- list of drivers who were youngest in their debut season
DROP VIEW IF EXISTS youngest_in_first_season;
CREATE VIEW youngest_in_first_season AS
       SELECT first_last_season.first_season AS first_season,
              first_last_season.driver AS driver
       FROM first_last_season
            JOIN youngest_oldest_in_season
                 ON youngest_oldest_in_season.year = first_last_season.first_season
                    AND youngest_oldest_in_season.youngest_name = first_last_season.driver;

-- list of drivers who were oldest in their last season
DROP VIEW IF EXISTS oldest_in_last_season;
CREATE VIEW oldest_in_last_season AS
       SELECT first_last_season.last_season AS last_season,
              first_last_season.driver AS driver
       FROM first_last_season
            JOIN youngest_oldest_in_season
                 ON youngest_oldest_in_season.year = first_last_season.last_season
                    AND youngest_oldest_in_season.oldest_name = first_last_season.driver;
