ALTER TABLE races CHANGE circuitId circuitId INT(11) NULL;
UPDATE races SET circuitId = NULL WHERE raceId = 935; -- 2015 German GP, venue TBA

UPDATE results SET position = NULL WHERE position = 0;

UPDATE drivers SET dob = NULL WHERE driverId = 415; -- Ray Reed, date of birth unknown
