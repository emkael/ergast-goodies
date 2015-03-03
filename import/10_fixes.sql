UPDATE circuits SET lng = 4.89913 WHERE circuitRef = 'dijon';
UPDATE circuits SET lat = 19.40421, lng = -99.090714 WHERE circuitRef = 'rodriguez';
UPDATE circuits SET lat = 33.7651, lng = -118.189 WHERE circuitRef = 'long_beach';
UPDATE circuits SET lat = 36.11617, lng = -115.1745 WHERE circuitRef = 'las_vegas';
UPDATE circuits SET lat = 47.95, lng = 0.2242312 WHERE circuitRef = 'lemans';
UPDATE circuits SET lat = 28.3468, lng = 77.5331232 WHERE circuitRef = 'buddh';
UPDATE circuits SET country = 'USA' WHERE country = 'United States';

UPDATE results SET grid = 15 WHERE resultId = 2939; -- Nick Heidfeld, Australia 2000

UPDATE drivers SET dob = '1954-01-24' WHERE driverId = 189; -- Jo Gartner
