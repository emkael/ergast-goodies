UPDATE results SET positionText = '15' WHERE resultId = 1087; -- Albers, China 2006

UPDATE results SET positionText = 'E' WHERE resultId = 8551; -- Larini, San Marino 1988
UPDATE results SET positionText = 'R' WHERE resultId = 15822; -- Tuero, Luxembourg 1998
UPDATE results SET positionText = 'R' WHERE resultId = 3977; -- Buettler, Italy 1971
UPDATE results SET positionText = 'W' WHERE resultId = 14469; -- Donohue, Austria 1975
UPDATE results SET positionText = 'W' WHERE resultId = 14470; -- Henton, Austria 1975
UPDATE results SET positionText = 'R' WHERE resultId = 15878; -- Ickx, USA 1971
UPDATE results SET positionText = 'R' WHERE resultId = 15732; -- Pescarolo, France 1971
UPDATE results SET positionText = 'N' WHERE resultId = 7408; -- Dalmas, Italy 1990
UPDATE results SET positionText = 'N' WHERE resultId = 8008; -- Alliot, Mexico 1989
UPDATE results SET positionText = 'N' WHERE resultId = 8119; -- Gugelmin, France 1989
UPDATE results SET positionText = 'N' WHERE resultId = 10213; -- Brundle, Australia 1985
UPDATE results SET positionText = 'N' WHERE resultId = 14616; -- Jarier, Spain 1974
UPDATE results SET positionText = 'N' WHERE resultId = 15059; -- Beltoise, Belgium 1973
UPDATE results SET positionText = 'N' WHERE resultId = 19809; -- van der Lof, Netherlands 1952
UPDATE results SET positionText = 'N' WHERE resultId = 19834; -- Hawthorn, Italy 1952
UPDATE results SET positionText = 'N' WHERE resultId = 19955; -- Kelly, Great Britain 1951
UPDATE results SET positionText = 'D' WHERE resultId = 5704; -- de Cesaris, Spain 1993
UPDATE results SET positionText = 'D' WHERE resultId = 10265; -- Brundle, South Africa 1984
UPDATE results SET positionText = 'D' WHERE resultId = 10267; -- Bellof, South Africa 1984
UPDATE results SET positionText = 'D' WHERE resultId = 10463; -- Bellof, Dallas 1984
UPDATE results SET positionText = 'D' WHERE resultId = 10982; -- Winkelhock, Netherlands 1983
UPDATE results SET positionText = 'D' WHERE resultId = 18559; -- Magill, Indy 500 1958
UPDATE results SET positionText = 'D' WHERE resultId = 19792; -- Bonetto, Germany 1952
UPDATE results SET positionText = '14' WHERE resultId = 1152; -- Sato, Australia 2005
UPDATE results SET positionText = '11' WHERE resultId = 1149; -- Button, Australia 2005
UPDATE results SET positionText = 'F' WHERE resultId = 2435; -- Fisichella, France 2002
UPDATE results SET positionText = 'F' WHERE resultId = 4512; -- Montermini, Spain 1994


UPDATE results SET `time` = '1:28:41.196' WHERE resultId = 20968; -- Alonso, Great Britain 2011
UPDATE results SET milliseconds = milliseconds + 2 WHERE raceId = 849;
UPDATE results SET `time` = '+1:00.665', milliseconds = 5381861 WHERE resultId = 20973; -- Rosberg, Great Britain 2011
UPDATE results SET `time` = '+1:20.681', milliseconds = milliseconds + 81 WHERE resultId = 20979; -- Petrov, Great Britain 2011

UPDATE results SET `time` = '1:37:30.344' WHERE resultId = 20992; -- Hamilton, Germany 2011
UPDATE results SET milliseconds = milliseconds - 10 WHERE raceId = 850;

UPDATE results SET `time` = '1:59:04.757' WHERE resultId = 21088; -- Vettel, Singapore 2011
UPDATE results SET milliseconds = milliseconds + 2000 WHERE raceId = 854;

UPDATE results SET `time` = '2:17:52.056' WHERE resultId = 21822; -- Rosberg, Monaco 2013
UPDATE results SET milliseconds = milliseconds + 120000 WHERE raceId = 885;

UPDATE results SET `time` = '1:41:14.711' WHERE resultId = 21888; -- Vettel, Germany 2013
UPDATE results SET milliseconds = milliseconds + 5973000 WHERE raceId = 888;

UPDATE results SET `time` = '1:39:17.148' WHERE resultId = 22086; -- Vettel, USA 2013
UPDATE results SET milliseconds = milliseconds - 20 WHERE raceId = 898;

UPDATE results SET `time` = '1:33:28.338' WHERE resultId = 22196; -- Hamilton, China 2014
UPDATE results SET milliseconds = milliseconds - 50 WHERE raceId = 903;

UPDATE results SET `time` = '+17.688', milliseconds = 9909500 WHERE resultId = 21259; -- Webber, Malaysia 2012
UPDATE results SET `time` = '+20.076', milliseconds = 6378743 WHERE resultId = 21645; -- Kobayashi, Abu Dhabi 2012
UPDATE results SET `time` = '+34.906', milliseconds = 6393573 WHERE resultId = 21651; -- Vergne, Abu Dhabi 2012

-- http://ergast.com/mrd/bugs#comment-13577
UPDATE qualifying SET q1 = '1:36.827' WHERE qualifyId = 409;
UPDATE qualifying SET q1 = '1:17.806' WHERE qualifyId = 500;
UPDATE qualifying SET q1 = NULL WHERE qualifyId = 1633;

UPDATE results SET `time` = '1:29:16.660' WHERE resultId = 15520;
UPDATE results SET milliseconds = milliseconds + 5356660 - 1757300 WHERE raceId = 628;

UPDATE results SET `time` = '1:48:00.185' WHERE resultId = 5387;
UPDATE results SET milliseconds = milliseconds + 6480185 - 60185 WHERE raceId = 266;

UPDATE results SET `time` = '1:42:52.220' WHERE resultId = 13339;
UPDATE results SET milliseconds = milliseconds + 6172220 - 6120220 WHERE raceId = 547;

UPDATE results SET `time` = '1:24:38.200' WHERE resultId = 20539;
UPDATE results SET milliseconds = milliseconds + 5078200 - 84200 WHERE raceId = 346;

UPDATE results SET `time` = '1:27:38.864' WHERE resultId = 20563;
UPDATE results SET milliseconds = milliseconds + 5258864 - 87684 WHERE raceId = 347;

UPDATE results SET `time` = '1:29:04.268' WHERE resultId = 20611;
UPDATE results SET milliseconds = milliseconds + 5344268 - 89268 WHERE raceId = 349;

UPDATE results SET milliseconds = 11197800 WHERE resultId = 20291;
UPDATE results SET `time` = '1:38:34.154' WHERE resultId = 4721;

UPDATE qualifying SET q2 = '1:22.285' WHERE qualifyId = 6484; -- Hamilton, 2015 Hungarian GP

-- http://ergast.com/mrd/bugs/comment-page-3#comment-15065
DELETE FROM drivers WHERE driverId = 809; -- Jose Maria Lopez

-- http://ergast.com/mrd/bugs/comment-page-3#comment-15072
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Martin_Donnelly_(racing_driver)' WHERE driverId = 151;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/David_Kennedy_(racing_driver)' WHERE driverId = 225;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Conny_Andersson_(racing_driver)' WHERE driverId = 260;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Alan_Rees_(racing_driver)' WHERE driverId = 390;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Bruce_Johnstone_(racing_driver)' WHERE driverId = 471;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Michael_May_(racing_driver)' WHERE driverId = 480;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Fred_Gamble_(racing_driver)' WHERE driverId = 545;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Justin_Wilson_(racing_driver)' WHERE driverId = 51;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/John_Love_(racing_driver)' WHERE driverId = 340;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Chris_Lawrence_(racing_driver)' WHERE driverId = 400;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Bob_Christie_(racing_driver)' WHERE driverId = 516;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Pat_Flaherty_(racing_driver)' WHERE driverId = 559;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Gerino_Gerini_(racing_driver)' WHERE driverId = 583;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Andy_Linden_(racing_driver)' WHERE driverId = 612;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Jack_McGrath_(racing_driver)' WHERE driverId = 658;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Travis_Webb' WHERE driverId = 677;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Joe_James_(racing_driver)' WHERE driverId = 728;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Leslie_Johnson_(racing_driver)' WHERE driverId = 790;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Oscar_Gonz%C3%A1lez_(racing_driver)' WHERE driverId = 806;
UPDATE drivers SET url = 'http://en.wikipedia.org/wiki/Carlos_Pace' WHERE driverId = 250;

-- http://ergast.com/mrd/bugs/comment-page-3#comment-15202
UPDATE qualifying SET driverId = 47, number = 12 WHERE qualifyId IN (4019, 4038); -- Baumgartner
UPDATE qualifying SET number = 4 WHERE qualifyId = 4025; -- Gene
