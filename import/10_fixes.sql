-- 1961 US GP, Gendebien/Gregory shared drive
INSERT INTO results(raceId, driverId, constructorId, `number`, grid, `position`, positionText, positionOrder, points, laps, `time`, fastestLap, rank, fastestLapTime, fastestLapSpeed, statusId) (SELECT raceId, 418, constructorId, `number`, grid, `position`, positionText, positionOrder, points, laps, `time`, fastestLap, rank, fastestLapTime, fastestLapSpeed, statusId FROM results WHERE raceId = 745 AND number = 21);

-- 1964 US GP, Spence/Clark shared drive
INSERT INTO results(raceId, driverId, constructorId, `number`, grid, `position`, positionText, positionOrder, points, laps, `time`, fastestLap, rank, fastestLapTime, fastestLapSpeed, statusId) (SELECT raceId, 373, constructorId, `number`, grid, `position`, positionText, positionOrder, points, laps, `time`, fastestLap, rank, fastestLapTime, fastestLapSpeed, statusId FROM results WHERE raceId = 717 AND number = 2);

-- 1971 Italian GP, Andrea de Adamich
UPDATE results SET positionOrder = positionOrder+1 WHERE positionOrder > 16 AND raceId = 633;
INSERT INTO results(raceId, driverId, constructorId, `number`, grid, `position`, positionText, positionOrder, points, laps, `time`, fastestLap, rank, fastestLapTime, fastestLapSpeed, statusId) VALUES(633, 333, 199, 17, 18, NULL, 'R', 17, 0, 26, NULL, NULL, NULL, NULL, NULL, 7);

-- 1978 US and Canadian GP, Arnoux's number
UPDATE results SET number = 18 WHERE number = 31 AND raceId IN (541, 542);

-- 1984 British GP, Corrado Fabi -> Teo Fabi
UPDATE results SET driverId = 170 WHERE driverId = 190 AND raceId = 445;

-- 2017 US GP, Ferrari numbers
UPDATE results SET `number` = 5 WHERE resultId = 23703;
UPDATE results SET `number` = 7 WHERE resultId = 23704;
