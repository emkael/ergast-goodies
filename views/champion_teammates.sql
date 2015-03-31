-- summary of double WDC teammate pairings
-- requires: world_drivers_champions (champions.sql),
--           teammates (teammates.sql)
DROP VIEW IF EXISTS champion_champion_teammates;
CREATE VIEW champion_champion_teammates AS
   SELECT races.year, CONCAT(wdc.forename, ' ', wdc.surname) driver1,
          COUNT(DISTINCT(wdc.year)) wdc_count1,
          CONCAT(wdc2.forename, ' ', wdc2.surname) driver2,
          COUNT(DISTINCT(wdc2.year)) wdc_count2
   FROM teammates
      JOIN races ON races.raceId = teammates.raceId
      JOIN world_drivers_champions wdc
         ON wdc.driverId = teammates.driver1 AND wdc.year < races.year
      JOIN races r2 ON r2.raceId = teammates.raceId
      JOIN world_drivers_champions wdc2
         ON wdc2.driverId = teammates.driver2 AND wdc2.year < races.year
   GROUP BY races.year, wdc.forename, wdc.surname, wdc2.forename, wdc2.surname;
