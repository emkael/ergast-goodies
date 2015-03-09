ALTER TABLE races CHANGE circuitId circuitId INT(11) NULL;
UPDATE races SET circuitId = NULL WHERE raceId = 935; -- 2015 German GP, venue TBA
