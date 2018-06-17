-- Indexes for table circuits
ALTER TABLE circuits
   ADD INDEX country (country);

-- Indexes for table constructorResults
ALTER TABLE constructorResults
   ADD INDEX status (status);

-- Indexes for table constructors
ALTER TABLE constructors
   ADD INDEX nationality (nationality);

-- Indexes for table drivers
ALTER TABLE drivers
   ADD INDEX number (number),
   ADD INDEX code (code),
   ADD INDEX dob (dob),
   ADD INDEX nationality (nationality);

-- Indexes for table driverStandings
ALTER TABLE driverStandings
   ADD INDEX position (position),
   ADD INDEX points (points),
   ADD INDEX positionText (positionText);

-- Indexes for table lapTimes
ALTER TABLE lapTimes
   ADD INDEX position (position),
   ADD INDEX lap (lap);

-- Indexes for table pitStops
ALTER TABLE pitStops
   ADD INDEX stop (stop),
   ADD INDEX lap (lap);

-- Indexes for table qualifying
ALTER TABLE qualifying
   ADD INDEX position (position);

-- Default value compatibility
ALTER TABLE `races` CHANGE `date` `date` DATE NULL DEFAULT NULL;
-- Indexes for table races
ALTER TABLE races
   ADD INDEX year (year),
   ADD INDEX `date` (`date`);

-- Indexes for table results
ALTER TABLE results
   ADD INDEX rank (rank),
   ADD INDEX points (points),
   ADD INDEX positionOrder (positionOrder),
   ADD INDEX positionText (positionText),
   ADD INDEX position (position),
   ADD INDEX grid (grid),
   ADD INDEX number (number);

-- Indexes for table status
ALTER TABLE status
   ADD INDEX status (status);
