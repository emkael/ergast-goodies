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

-- every team each driver would go to drive for in the following year
CREATE VIEW next_season_driver_constructor AS
   SELECT sdc.*, sdc2.constructorId AS nextConstructor
   FROM season_driver_constructor sdc
      LEFT JOIN season_driver_constructor sdc2
         ON (sdc.year = (sdc2.year - 1)) AND (sdc.driverId = sdc2.driverId);

-- every driver team switch with both cosntructors' positions
-- for the initial season
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
