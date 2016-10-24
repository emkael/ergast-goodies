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


UPDATE qualifying SET number = 4 WHERE qualifyId = 4025; -- 2003 Italian Grand Prix, Gene
UPDATE qualifying SET number = 21 WHERE qualifyId = 478; -- 2007 Monaco Grand Prix, Albers
UPDATE qualifying SET number = 10 WHERE qualifyId = 507; -- 2007 United States Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 588; -- 2007 European Grand Prix, Winkelhock
UPDATE qualifying SET number = 19 WHERE qualifyId = 608; -- 2007 Hungarian Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 610; -- 2007 Hungarian Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 628; -- 2007 Turkish Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 630; -- 2007 Turkish Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 648; -- 2007 Italian Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 654; -- 2007 Italian Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 670; -- 2007 Belgian Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 675; -- 2007 Belgian Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 684; -- 2007 Japanese Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 698; -- 2007 Japanese Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 715; -- 2007 Chinese Grand Prix, Vettel
UPDATE qualifying SET number = 21 WHERE qualifyId = 720; -- 2007 Chinese Grand Prix, Yamamoto
UPDATE qualifying SET number = 19 WHERE qualifyId = 733; -- 2007 Brazilian Grand Prix, Vettel
UPDATE qualifying SET number = 17 WHERE qualifyId = 739; -- 2007 Brazilian Grand Prix, Nakajima
UPDATE qualifying SET number = 21 WHERE qualifyId = 742; -- 2007 Brazilian Grand Prix, Yamamoto
UPDATE qualifying SET number = 7 WHERE qualifyId = 759; -- 2006 Bahrain Grand Prix, R. Schumacher
UPDATE qualifying SET number = 23 WHERE qualifyId = 852; -- 2006 European Grand Prix, Montagny
UPDATE qualifying SET number = 23 WHERE qualifyId = 873; -- 2006 Spanish Grand Prix, Montagny
UPDATE qualifying SET number = 23 WHERE qualifyId = 894; -- 2006 Monaco Grand Prix, Montagny
UPDATE qualifying SET number = 23 WHERE qualifyId = 917; -- 2006 British Grand Prix, Montagny
UPDATE qualifying SET number = 23 WHERE qualifyId = 940; -- 2006 Canadian Grand Prix, Montagny
UPDATE qualifying SET number = 23 WHERE qualifyId = 962; -- 2006 United States Grand Prix, Montagny
UPDATE qualifying SET number = 4 WHERE qualifyId = 970; -- 2006 French Grand Prix, de la Rosa
UPDATE qualifying SET number = 23 WHERE qualifyId = 983; -- 2006 French Grand Prix, Montagny
UPDATE qualifying SET number = 4 WHERE qualifyId = 993; -- 2006 German Grand Prix, de la Rosa
UPDATE qualifying SET number = 23 WHERE qualifyId = 1005; -- 2006 German Grand Prix, Yamamoto
UPDATE qualifying SET number = 4 WHERE qualifyId = 1011; -- 2006 Hungarian Grand Prix, de la Rosa
UPDATE qualifying SET number = 17 WHERE qualifyId = 1016; -- 2006 Hungarian Grand Prix, Kubica
UPDATE qualifying SET number = 23 WHERE qualifyId = 1028; -- 2006 Hungarian Grand Prix, Yamamoto
UPDATE qualifying SET number = 17 WHERE qualifyId = 1037; -- 2006 Turkish Grand Prix, Kubica
UPDATE qualifying SET number = 4 WHERE qualifyId = 1040; -- 2006 Turkish Grand Prix, de la Rosa
UPDATE qualifying SET number = 23 WHERE qualifyId = 1049; -- 2006 Turkish Grand Prix, Yamamoto
UPDATE qualifying SET number = 17 WHERE qualifyId = 1056; -- 2006 Italian Grand Prix, Kubica
UPDATE qualifying SET number = 4 WHERE qualifyId = 1057; -- 2006 Italian Grand Prix, de la Rosa
UPDATE qualifying SET number = 23 WHERE qualifyId = 1072; -- 2006 Italian Grand Prix, Yamamoto
UPDATE qualifying SET number = 4 WHERE qualifyId = 1079; -- 2006 Chinese Grand Prix, de la Rosa
UPDATE qualifying SET number = 17 WHERE qualifyId = 1081; -- 2006 Chinese Grand Prix, Kubica
UPDATE qualifying SET number = 15 WHERE qualifyId = 1082; -- 2006 Chinese Grand Prix, Doornbos
UPDATE qualifying SET number = 23 WHERE qualifyId = 1091; -- 2006 Chinese Grand Prix, Yamamoto
UPDATE qualifying SET number = 17 WHERE qualifyId = 1106; -- 2006 Japanese Grand Prix, Kubica
UPDATE qualifying SET number = 4 WHERE qualifyId = 1107; -- 2006 Japanese Grand Prix, de la Rosa
UPDATE qualifying SET number = 15 WHERE qualifyId = 1112; -- 2006 Japanese Grand Prix, Doornbos
UPDATE qualifying SET number = 23 WHERE qualifyId = 1116; -- 2006 Japanese Grand Prix, Yamamoto
UPDATE qualifying SET number = 17 WHERE qualifyId = 1125; -- 2006 Brazilian Grand Prix, Kubica
UPDATE qualifying SET number = 4 WHERE qualifyId = 1128; -- 2006 Brazilian Grand Prix, de la Rosa
UPDATE qualifying SET number = 15 WHERE qualifyId = 1131; -- 2006 Brazilian Grand Prix, Doornbos
UPDATE qualifying SET number = 23 WHERE qualifyId = 1137; -- 2006 Brazilian Grand Prix, Yamamoto
ALTER TABLE results CHANGE number number INT(11) NULL DEFAULT NULL;
UPDATE results SET number = NULL WHERE resultId = 20322; -- 1963 South African Grand Prix, Hailwood
UPDATE results SET number = NULL WHERE resultId = 17716; -- 1962 French Grand Prix, Marsh
UPDATE results SET number = NULL WHERE resultId = 17717; -- 1962 French Grand Prix, Davis
UPDATE results SET number = NULL WHERE resultId = 17718; -- 1962 French Grand Prix, Abate
UPDATE results SET number = NULL WHERE resultId = 17719; -- 1962 French Grand Prix, Burgess
UPDATE results SET number = NULL WHERE resultId = 17940; -- 1961 French Grand Prix, Bordeu
UPDATE results SET number = 12 WHERE resultId = 19941; -- 1951 British Grand Prix, González
UPDATE results SET number = 2 WHERE resultId = 19942; -- 1951 British Grand Prix, Fangio
UPDATE results SET number = 10 WHERE resultId = 19943; -- 1951 British Grand Prix, Villoresi
UPDATE results SET number = 4 WHERE resultId = 19944; -- 1951 British Grand Prix, Bonetto
UPDATE results SET number = 6 WHERE resultId = 19945; -- 1951 British Grand Prix, Parnell
UPDATE results SET number = 3 WHERE resultId = 19946; -- 1951 British Grand Prix, Sanesi
UPDATE results SET number = 7 WHERE resultId = 19947; -- 1951 British Grand Prix, Walker
UPDATE results SET number = 9 WHERE resultId = 19948; -- 1951 British Grand Prix, Shawe Taylor
UPDATE results SET number = 14 WHERE resultId = 19949; -- 1951 British Grand Prix, Whitehead
UPDATE results SET number = 22 WHERE resultId = 19950; -- 1951 British Grand Prix, Rosier
UPDATE results SET number = 8 WHERE resultId = 19951; -- 1951 British Grand Prix, Gerard
UPDATE results SET number = 18 WHERE resultId = 19952; -- 1951 British Grand Prix, Hamilton
UPDATE results SET number = 25 WHERE resultId = 19953; -- 1951 British Grand Prix, Claes
UPDATE results SET number = 1 WHERE resultId = 19954; -- 1951 British Grand Prix, Farina
UPDATE results SET number = 5 WHERE resultId = 19955; -- 1951 British Grand Prix, Kelly
UPDATE results SET number = 11 WHERE resultId = 19956; -- 1951 British Grand Prix, Ascari
UPDATE results SET number = 17 WHERE resultId = 19957; -- 1951 British Grand Prix, Fotheringham-Parker
UPDATE results SET number = 15 WHERE resultId = 19958; -- 1951 British Grand Prix, Murray
UPDATE results SET number = 23 WHERE resultId = 19959; -- 1951 British Grand Prix, Chiron
UPDATE results SET number = 16 WHERE resultId = 19960; -- 1951 British Grand Prix, James

UPDATE drivers SET url = NULL, dob = '1945-09-03', dod = '2009-03-19' WHERE driverId = 452; -- Thomas Monarch
UPDATE drivers SET dob = '1980-08-06' WHERE driverId = 24; -- Vitantonio Liuzzi
UPDATE drivers SET dob = '1974-03-29' WHERE driverId = 48; -- Marc Gene
UPDATE drivers SET dob = '1969-11-19' WHERE driverId = 113; -- Philippe Adams
UPDATE drivers SET dob = '1954-04-17' WHERE driverId = 119; -- Riccardo Patrese
UPDATE drivers SET dob = '1962-10-05' WHERE driverId = 121; -- Michael Andretti
UPDATE drivers SET dob = '1959-07-20' WHERE driverId = 132; -- Giovanna Amati
UPDATE drivers SET dob = '1934-05-13' WHERE driverId = 310; -- Paddy Driver
UPDATE drivers SET dob = '1940-10-02' WHERE driverId = 330; -- Nanni Galli
UPDATE drivers SET dob = '1936-07-07' WHERE driverId = 346; -- Jo Siffert
UPDATE drivers SET dob = '1941-08-30' WHERE driverId = 363; -- Ignazio Giunti
UPDATE drivers SET dob = '1933-03-04' WHERE driverId = 425; -- Nino Vaccarella
UPDATE drivers SET dob = '1930-07-06' WHERE driverId = 437; -- Ian Burgess
UPDATE drivers SET dob = '1926-05-15' WHERE driverId = 448; -- Peter Broeker
UPDATE drivers SET dob = '1920-06-01' WHERE driverId = 474; -- Syd van der Vyver
UPDATE drivers SET dob = '1920-04-05' WHERE driverId = 491; -- Alfonso Thiele
UPDATE drivers SET dob = '1921-06-04' WHERE driverId = 503; -- Ettore Chimeri
UPDATE drivers SET dob = '1925-10-02' WHERE driverId = 510; -- Paul Goldsmith
UPDATE drivers SET dob = '1927-05-28' WHERE driverId = 527; -- Eddie Sachs
UPDATE drivers SET dob = '1915-03-23' WHERE driverId = 546; -- Arthur Owen
UPDATE drivers SET dob = '1933-04-24' WHERE driverId = 595; -- Billy Garrett
UPDATE drivers SET dob = '1932-10-21' WHERE driverId = 607; -- Cesare Perdisa
UPDATE drivers SET dob = '1921-02-22' WHERE driverId = 613; -- Marshall Teague
UPDATE drivers SET dob = '1928-06-05' WHERE driverId = 620; -- Umberto Maglioli
UPDATE drivers SET dob = '1929-08-08' WHERE driverId = 653; -- Jimmy Davies
UPDATE drivers SET dob = '1923-06-06' WHERE driverId = 727; -- Jim Rigsby
UPDATE drivers SET dob = '1896-12-28' WHERE driverId = 741; -- Philippe Etancelin
UPDATE drivers SET dob = '1909-01-01' WHERE driverId = 754; -- Marcel Balsa
UPDATE drivers SET dob = '1913-12-15' WHERE driverId = 796; -- Walt Ader
UPDATE drivers SET dob = '1989-08-28' WHERE driverId = 822; -- Valtteri Bottas
UPDATE drivers SET dob = '1993-01-22' WHERE driverId = 837; -- Rio Haryanto
