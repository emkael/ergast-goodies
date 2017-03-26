-- WDC standings at the end of each year
DROP VIEW IF EXISTS driver_championship_results;
CREATE VIEW driver_championship_results AS
   SELECT * FROM driverStandings
      WHERE raceId IN (
            SELECT MAX(raceId) FROM races GROUP BY year
      );

-- all drivers listed in the standings at position = 1
-- for last race of each season
DROP VIEW IF EXISTS world_drivers_champions;
CREATE VIEW world_drivers_champions AS
   SELECT drivers.*, races.year
   FROM driver_championship_results
      JOIN races ON races.raceId = driver_championship_results.raceId
      JOIN drivers ON driver_championship_results.driverId = drivers.driverId
   WHERE driver_championship_results.position = 1;

-- WCC standings at the end of each year
DROP VIEW IF EXISTS constructor_championship_results;
CREATE VIEW constructor_championship_results AS
   SELECT * FROM constructorStandings
      WHERE raceId IN (
            SELECT MAX(raceId) FROM races GROUP BY year
      );

-- all constructors listed in the standings at position = 1
-- for last race of each season
DROP VIEW IF EXISTS world_constructors_champions;
CREATE VIEW world_constructors_champions AS
   SELECT constructors.*, races.year
   FROM constructor_championship_results
      JOIN races ON races.raceId = constructor_championship_results.raceId
      JOIN constructors
         ON constructor_championship_results.constructorId = constructors.constructorId
   WHERE constructor_championship_results.position = 1;
