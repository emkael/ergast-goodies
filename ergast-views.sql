-- view holds distinct driver-race entries
-- (eliminating duplicate race entries from shared drives)
CREATE VIEW driver_races AS
   SELECT driverId, raceId
   FROM results
   GROUP BY driverId, raceId;

-- view aggregates races by season for each driver
CREATE VIEW driver_season_races AS
   SELECT driver_races.driverId, races.year,
      GROUP_CONCAT(driver_races.raceId ORDER BY driver_races.raceId ASC) AS races
   FROM driver_races
      JOIN races ON races.raceId = driver_races.raceId
   GROUP BY driver_races.driverId, races.year;

-- view aggregates races by season
CREATE VIEW season_races AS
   SELECT year, GROUP_CONCAT(raceId ORDER BY raceId ASC) AS races
   FROM races
   GROUP BY year;

-- selecting only driver-season pairs with all races in a season
CREATE VIEW full_season_drivers AS
   SELECT driver_season_races.driverId, driver_season_races.year
   FROM season_races
      JOIN driver_season_races
         ON (season_races.races = driver_season_races.races)
            AND (season_races.year = driver_season_races.year);

-- all drivers listed in the standings at position = 1
-- for last race of each season
CREATE VIEW world_drivers_champions AS
   SELECT drivers.*, races.year
   FROM driverStandings
      JOIN races ON races.raceId = driverStandings.raceId
      JOIN drivers ON driverStandings.driverId = drivers.driverId
   WHERE driverStandings.raceId IN (SELECT MAX(raceId) FROM races GROUP BY year)
      AND (driverStandings.position = 1);

-- all constructors listed in the standings at position = 1
-- for last race of each season
CREATE VIEW world_constructors_champions AS
   SELECT constructors.*, races.year
   FROM constructorStandings
      JOIN races ON races.raceId = constructorStandings.raceId
      JOIN constructors
         ON constructorStandings.constructorId = constructors.constructorId
   WHERE constructorStandings.raceId IN (
         SELECT MAX(raceId) FROM races GROUP BY year
      )
      AND (constructorStandings.position = 1);

-- all driver pairs listed in the results as driving for the same constructor
-- in the same race, for every race
CREATE VIEW teammates AS
   SELECT r1.raceId, r1.constructorId,
      r1.driverId driver1, r1.position d1position,
      r1.positionText d1posText, r1.statusId d1status,
      r2.driverId driver2, r2.position d2position,
      r2.positionText d2posText, r2.statusId d2status
   FROM results r1
      JOIN results r2
         ON r1.raceId = r2.raceId
         AND r1.constructorId = r2.constructorId
         AND r1.driverId <> r2.driverId;

-- tally of results from the previous view
CREATE VIEW teammate_tally AS
   SELECT CONCAT(d1.forename, " ", d1.surname) driver,
      SUM(teammates.d1position < teammates.d2position) wins,
      SUM(teammates.d1position = teammates.d2position) draws,
      SUM(teammates.d1position > teammates.d2position) loses,
      CONCAT(d2.forename, " ", d2.surname) against,
      SUM(teammates.d1position IS NOT NULL
          AND teammates.d2position IS NOT NULL) compare_count,
      COUNT(teammates.raceId) overall_count
   FROM teammates
      JOIN drivers d1 ON d1.driverId = teammates.driver1
      JOIN drivers d2 ON d2.driverId = teammates.driver2
   GROUP BY teammates.driver1, teammates.driver2;

-- constructors' standings at the end of each season
CREATE VIEW constructor_championship_results AS
   SELECT * FROM constructorStandings
   WHERE raceId IN (
      SELECT MAX(raceId) FROM races GROUP BY year
   );

-- every driver-constructor pair for each season
CREATE VIEW season_driver_constructor AS
   SELECT results.driverId, results.constructorId, races.year
   FROM results
      JOIN races ON races.raceId = results.raceId
   GROUP BY results.driverId, results.constructorId, races.year;

-- every team each driver would go to drive for the following year
CREATE VIEW next_season_driver_constructor AS
   SELECT sdc.*, sdc2.constructorId AS nextConstructor
   FROM season_driver_constructor sdc
      LEFT JOIN season_driver_constructor sdc2
         ON (sdc.year = (sdc2.year - 1)) AND (sdc.driverId = sdc2.driverId);

-- every driver team switch with cosntructors' positions for the former season
CREATE VIEW driver_team_switches AS
   SELECT nsdc.driverId, nsdc.year, nsdc.constructorId, nsdc.nextConstructor,
      cs.position AS prevPosition, cs2.position AS nextPosition
   FROM next_season_driver_constructor nsdc
      JOIN constructor_championship_results cs
         ON nsdc.constructorId = cs.constructorId
      JOIN races ON (cs.raceId = races.raceId) AND (races.year = nsdc.year)
      JOIN constructor_championship_results cs2
         ON nsdc.nextConstructor = cs2.constructorId
      JOIN races r2 ON (r2.year = nsdc.year) and (r2.raceId = cs2.raceId)
   WHERE nsdc.constructorId <> nsdc.nextConstructor;

CREATE VIEW podium_sequences AS
   SELECT raceId, GROUP_CONCAT(driverId ORDER BY position ASC, driverId ASC) AS podium
   FROM results
   WHERE position IN (1,2,3)
   GROUP BY raceId;

CREATE VIEW podium_sets AS
   SELECT raceId, GROUP_CONCAT(driverId ORDER BY driverId) AS podium
   FROM results
   WHERE position IN (1,2,3)
   GROUP BY raceId;

CREATE VIEW non_champion_nationality_podiums AS
   SELECT * FROM races
   WHERE raceId NOT IN (
      SELECT results.raceId FROM results
         JOIN drivers ON drivers.driverId = results.driverId
         JOIN races ON races.raceId = results.raceId
         WHERE drivers.nationality IN (
            SELECT nationality FROM world_drivers_champions
            WHERE year < races.year
         ) AND position IN (1,2,3)
   );
