UPDATE qualifying SET q1 = NULL WHERE q1 = '';
UPDATE qualifying SET q2 = NULL WHERE q2 = '';
UPDATE qualifying SET q3 = NULL WHERE q3 = '';

DELETE FROM constructorStandings WHERE raceId NOT IN (SELECT raceId FROM races);
DELETE FROM driverStandings WHERE raceId NOT IN (SELECT raceId FROM races);
