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
      COALESCE(SUM(teammates.d1position < teammates.d2position), 0) wins,
      COALESCE(SUM(teammates.d1position = teammates.d2position), 0) draws,
      COALESCE(SUM(teammates.d1position > teammates.d2position), 0) loses,
      CONCAT(d2.forename, " ", d2.surname) against,
      SUM(teammates.d1position IS NOT NULL
          AND teammates.d2position IS NOT NULL) compare_count,
      COUNT(teammates.raceId) overall_count
   FROM teammates
      JOIN drivers d1 ON d1.driverId = teammates.driver1
      JOIN drivers d2 ON d2.driverId = teammates.driver2
   GROUP BY teammates.driver1, teammates.driver2;
