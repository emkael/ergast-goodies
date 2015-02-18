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
