-- Constraints for table constructorResults
ALTER TABLE constructorResults
   ADD CONSTRAINT constructorResults_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT constructorResults_ibfk_2 FOREIGN KEY (constructorId) REFERENCES constructors (constructorId) ON UPDATE CASCADE;

-- Constraints for table constructorStandings
ALTER TABLE constructorStandings
   ADD CONSTRAINT constructorStandings_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT constructorStandings_ibfk_2 FOREIGN KEY (constructorId) REFERENCES constructors (constructorId) ON UPDATE CASCADE;

-- Constraints for table driverStandings
ALTER TABLE driverStandings
   ADD CONSTRAINT driverStandings_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT driverStandings_ibfk_2 FOREIGN KEY (driverId) REFERENCES drivers (driverId) ON UPDATE CASCADE;

-- Constraints for table lapTimes
ALTER TABLE lapTimes
   ADD CONSTRAINT lapTimes_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT lapTimes_ibfk_2 FOREIGN KEY (driverId) REFERENCES drivers (driverId) ON UPDATE CASCADE;

-- Constraints for table pitStops
ALTER TABLE pitStops
   ADD CONSTRAINT pitStops_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT pitStops_ibfk_2 FOREIGN KEY (driverId) REFERENCES drivers (driverId) ON UPDATE CASCADE;

-- Constraints for table qualifying
ALTER TABLE qualifying
   ADD CONSTRAINT qualifying_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT qualifying_ibfk_2 FOREIGN KEY (driverId) REFERENCES drivers (driverId) ON UPDATE CASCADE,
   ADD CONSTRAINT qualifying_ibfk_3 FOREIGN KEY (constructorId) REFERENCES constructors (constructorId) ON UPDATE CASCADE;

-- Constraints for table races
ALTER TABLE races
   ADD CONSTRAINT races_ibfk_1 FOREIGN KEY (circuitId) REFERENCES circuits (circuitId);

-- Constraints for table results
ALTER TABLE results
   ADD CONSTRAINT results_ibfk_1 FOREIGN KEY (raceId) REFERENCES races (raceId) ON UPDATE CASCADE,
   ADD CONSTRAINT results_ibfk_2 FOREIGN KEY (driverId) REFERENCES drivers (driverId) ON UPDATE CASCADE,
   ADD CONSTRAINT results_ibfk_3 FOREIGN KEY (constructorId) REFERENCES constructors (constructorId) ON UPDATE CASCADE,
   ADD CONSTRAINT results_ibfk_4 FOREIGN KEY (statusId) REFERENCES status (statusId) ON UPDATE CASCADE;
