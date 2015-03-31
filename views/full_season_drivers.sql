-- view holds distinct driver-race entries
-- (eliminating duplicate race entries from shared drives)
DROP VIEW IF EXISTS driver_races;
CREATE VIEW driver_races AS
   SELECT driverId, raceId
   FROM results
   GROUP BY driverId, raceId;

-- view aggregates races by season for each driver
DROP VIEW IF EXISTS driver_season_races;
CREATE VIEW driver_season_races AS
   SELECT driver_races.driverId, races.year,
      GROUP_CONCAT(driver_races.raceId
         ORDER BY driver_races.raceId ASC)
      AS races
   FROM driver_races
      JOIN races ON races.raceId = driver_races.raceId
   GROUP BY driver_races.driverId, races.year;

-- view aggregates races by season
DROP VIEW IF EXISTS season_races;
CREATE VIEW season_races AS
   SELECT year, GROUP_CONCAT(raceId ORDER BY raceId ASC) AS races
   FROM races
   GROUP BY year;

-- selecting only driver-season pairs with all races in a season
DROP VIEW IF EXISTS full_season_drivers;
CREATE VIEW full_season_drivers AS
   SELECT driver_season_races.driverId, driver_season_races.year
   FROM season_races
      JOIN driver_season_races
         ON (season_races.races = driver_season_races.races)
            AND (season_races.year = driver_season_races.year);

-- average grid age for every race
DROP VIEW IF EXISTS average_grid_age;
CREATE VIEW average_grid_age AS
   SELECT AVG(DATEDIFF(races.date, drivers.dob)) average_age,
          CONCAT(races.year, ' ', races.name) race, races.date
   FROM driver_races
      JOIN races ON driver_races.raceId = races.raceId
      JOIN drivers ON drivers.driverId = driver_races.driverId
   GROUP BY races.raceId;
