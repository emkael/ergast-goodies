ALTER TABLE races CHANGE circuitId circuitId INT(11) NULL;
DELETE FROM races WHERE raceId = 935; -- 2015 German GP is no more
