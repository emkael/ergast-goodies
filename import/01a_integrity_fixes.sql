UPDATE constructorResults SET constructorId = 7 WHERE constructorResultsId = 14128; -- Toyota, Spain 2005
UPDATE constructorResults SET constructorId = 3 WHERE constructorResultsId = 14845; -- Williams, China 2014

UPDATE constructorStandings SET constructorId = 7 WHERE constructorStandingsId = 24518; -- Toyota, Spain 2005

UPDATE qualifying SET driverId = 42, constructorId = 17 WHERE qualifyId = 4019; -- Baumgartner (Jordan), Hungary 2003
UPDATE qualifying SET driverId = 42, constructorId = 17 WHERE qualifyId = 4038; -- Baumgartner (Jordan), Italy 2003
UPDATE qualifying SET driverId = 48, constructorId = 3 WHERE qualifyId = 4025; -- Gené (Williams), Italy 2003
UPDATE qualifying SET constructorId = 164 WHERE qualifyId IN (3420, 3421); -- HRT, China 2010
UPDATE qualifying SET constructorId = 3 WHERE qualifyId IN (4600, 4602); -- Williams, China 2011
