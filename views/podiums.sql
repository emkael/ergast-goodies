-- podium for each race, in order of finishing position
DROP VIEW IF EXISTS podium_sequences;
CREATE VIEW podium_sequences AS
   SELECT races.*,
      GROUP_CONCAT(CONCAT(drivers.forename, " ", drivers.surname)
         ORDER BY results.position ASC, results.driverId ASC)
      AS podium
   FROM results
   JOIN races ON results.raceId = races.raceId
   JOIN drivers ON results.driverId = drivers.driverId
   WHERE results.position IN (1,2,3)
   GROUP BY results.raceId;

-- podium for each race, in alphabetical order
DROP VIEW IF EXISTS podium_sets;
CREATE VIEW podium_sets AS
   SELECT races.*,
      GROUP_CONCAT(CONCAT(drivers.forename, " ", drivers.surname)
         ORDER BY drivers.surname ASC, drivers.forename ASC,
            drivers.driverRef ASC)
      AS podium
   FROM results
   JOIN races ON results.raceId = races.raceId
   JOIN drivers ON results.driverId = drivers.driverId
   WHERE results.position IN (1,2,3)
   GROUP BY results.raceId;

-- races in which the entire podium consisted of driver of nationality
-- yet to produce a drivers' world champion
DROP VIEW IF EXISTS non_champion_nationality_podiums;
CREATE VIEW non_champion_nationality_podiums AS
   SELECT raceId, year, name, podium FROM podium_sequences
   WHERE raceId NOT IN (
      SELECT results.raceId FROM results
         JOIN drivers ON drivers.driverId = results.driverId
         JOIN races ON races.raceId = results.raceId
         WHERE drivers.nationality IN (
            SELECT nationality FROM world_drivers_champions
            WHERE year < races.year
         ) AND position IN (1,2,3)
   );
