DROP TABLE Location;
CREATE TABLE Location(
	LocID INTEGER PRIMARY KEY AUTOINCREMENT,
	LocName TEXT,
	LocCard TEXT,
	LocCont TEXT
);

DROP TABLE House;
CREATE TABLE House(
	HouseID INTEGER PRIMARY KEY AUTOINCREMENT,
	HouseName TEXT,
	HouseWords TEXT,
	HouseSigil TEXT,
	LocID INTEGER,
	CONSTRAINT House_LocID_FK FOREIGN KEY (LocID) REFERENCES Location(LocID)
);

DROP TABLE Character;
CREATE TABLE Character(
	CharID INTEGER PRIMARY KEY AUTOINCREMENT,
	FirstName TEXT,
	MiddleName TEXT,
	LastName TEXT,
	Position TEXT,
	IsAlive CHAR CHECK (isAlive IN ('Y', 'N')),
	Religion TEXT,
	Organization TEXT,
	HouseID INTEGER,
	CONSTRAINT Character_HouseID_FK FOREIGN KEY (HouseID) REFERENCES House(HouseID)
);

INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Fist of the First Men', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Craster''s Keep', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Frostfangs', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hardhome', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ruddy Hall', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Wall', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Whitetree', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Haunted forest', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Land of Always Winter', 'Beyond the Wall', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Barrowton', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Deepwood Motte', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('The Dreadfort', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Driftwood Hall', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Deepdown', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Castle Cerwyn', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Flint''s Finger', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Goldgrass', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Greywater Watch', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Karhold', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hornwood', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Last Hearth', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('KingsHouse', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Moat Cailin', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Oldcastle', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ramsgate', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Torrhen''s Square', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('White Harbor', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Widow''s Watch', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Winterfell', 'North', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Crow Spike Keep', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Downdelving', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grey Garden', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grey King''s Hall', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hammerhorn', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Harridan Hill', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Harlaw Hall', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Iron Holt', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Lordsport', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Pebbleton', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Pyke', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sealskin Point', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Shatterstone', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ten Towers', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Tower of Glimmering', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Volmark', 'Iron Islands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Riverrun', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Harrenhal', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('The Twins', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Seagard', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Raventree Hall', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Stone Hedge', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Fairmarket', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Saltpans', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Maidenpool', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Stoney Sept', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Pinkmaiden', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Acorn Hall', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Atranta', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Wayfarer''s Rest', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Lord Harroway''s Town', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Oldstones', 'Riverlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Coldwater Burn', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('The Eyrie', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Gulltown', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Heart''s Home', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ironoaks', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Longbow Hall', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ninestars', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Old Anchor', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Runestone', 'Vale of Arryn', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ashemark', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Banefort', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Castamere', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Casterly Rock', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Clegane''s Keep', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Cornfield', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('The Crag', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Crakehall', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Deep Den', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Faircastle', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Feastfires', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Golden Tooth', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Greenfield', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hornvale', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Kayce', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Lannisport', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Nunn''s Deep', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Oxcross', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Pendric Hills', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sarsfield', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Silverhill', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Tarbeck Hall', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Wyndhall', 'Westerlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Antlers', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Briarwhite', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Brindlewood', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Brownhollow', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Dragonstone', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Driftmark', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Dun Fort', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Duskendale', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Dyre Den', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hayford', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('King''s Landing', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Old Stone Bridge', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Rook''s Rest', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Rosby', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sharp Point', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sow''s Horn', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Stokeworth', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Stonedance', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sweetport Sound', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Whispers', 'Crownlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Appleton', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ashford', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Bandallon', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Bitterbridge', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Blackcrown', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Brandybottom', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Brightwater Keep', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Cider Hall', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Citadel', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Cobble Cover', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Coldmoat', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Cuy', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Darkdell', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Dosk', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Goldengrove', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grassfield Keep', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grassy Vale', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grimston', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hammerhal', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Highgarden', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hightower', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Holyhall', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Honeyholt', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Horn Hill', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ivy Hall', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Little Dosk', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Longtable', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Lord Hewett''s Town', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('New Barrel', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Nunny', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Old Oak', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Oldtown', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Red Lake', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ring', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ryamsport', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Smithyton', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Standfast', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Starfish Harbor', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Starpike ', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('SunHouse', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Three Towers', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Tumbleton', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Uplands', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Vinetown', 'The Reach', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Amberly', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Blackhaven', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Broad Arch', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Bronzegate', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Crow''s Nest', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Evenfall Hall', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Fawnton', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Felwood', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Gallowsgrey', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Grandview', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Greenstone', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Griffin''s Roost', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Harvest Hall', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Haystack Hall', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Mistwood', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Nightsong', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Parchments', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Poddingfield', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Rain House', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Stonehelm', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Storm''s End', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Summerhall', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Weeping Tower', 'Stormlands', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Blackmont', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ghaston Grey', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Ghost Hill', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Godsgrace', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Hellholt', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('High Hermitage', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Kingsgrave', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Lemonwood', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Planky Town', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Salt Shore', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sandstone', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Shandystone', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Skyreach', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Spottswood', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Starfall', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Sunspear', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('The Tor', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Tower of Joy', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Vaith', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Vulture''s Roost', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Water Gardens', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Wyl', 'Dorne', 'Westeros');
INSERT INTO Location (LocName, LocCard, LocCont) VALUES ('Yronwood', 'Dorne', 'Westeros');

INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Lannister', 'Hear Me Roar!', 'Golden lion on a field of crimson', (SELECT LocID FROM Location WHERE LocName='Casterly Rock'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Stark', 'Winter Is Coming', 'Grey direwolf racing across a field of white', (SELECT LocID FROM Location WHERE LocName='Winterfell'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Baratheon', 'Ours is the Fury', 'Crowned black stag on a field of gold', (SELECT LocID FROM Location WHERE LocName='Storm''s End'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Tyrell', 'Growing Strong', 'Golden rose on a green field', (SELECT LocID FROM Location WHERE LocName='Highgarden'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Baelish', NULL, 'Grey stone head on a light green field', (SELECT LocID FROM Location WHERE LocName='Flint''s Finger'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Martell', 'Unbowed, Unbent, Unbroken', 'Sun in splendour gules pierced bendwise by a spear', (SELECT LocID FROM Location WHERE LocName='Sunspear'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Greyjoy', 'We Do Not Sow', 'Golden kraken on a black field', (SELECT LocID FROM Location WHERE LocName='Pyke'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Arryn', 'As High as Honor', 'White moon-and-falcon on a sky-blue field', (SELECT LocID FROM Location WHERE LocName='Sunspear'));
INSERT INTO House (HouseName, HouseWords, HouseSigil, LocID) VALUES ('Bolton', 'Our Blades are Sharp', 'A flayed man holds no secrets', (SELECT LocID FROM Location WHERE LocName='The Dreadfort'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Jasper', NULL, 'Arryn', 'Lord', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Lysa', NULL, 'Tully', 'Lady', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Jon', NULL, 'Arryn', 'Lord', 'N', NULL, 'Hand of the King', (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Robert', NULL, 'Arryn', 'Lord', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Alys', NULL, 'Arryn', NULL, 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Elys', NULL, 'Waynwood', 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Denys', NULL, 'Arryn', 'Ser', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Harrold', NULL, 'Hardyng', 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Elbert', NULL, 'Arryn', 'Heir', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Artys', NULL, 'Arryn', 'Ser', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Alyssa', NULL, 'Arryn', NULL, 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Jeyne', NULL, 'Arryn', 'Lady', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Arryn'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Peytr', NULL, 'Baelish', 'Lord', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baelish'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Oswell', NULL, 'Kettleblack', 'Servant', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baelish'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Shadrich', NULL, NULL, 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baelish'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Byron', NULL, NULL, 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baelish'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Morgarth', NULL, NULL, 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baelish'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Robert', NULL, 'Baratheon', 'Ser', 'N', 'Faith of the Seven', NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Steffon', NULL, 'Baratheon', 'Lord', 'N', 'Faith of the Seven', NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Rhaelle', NULL, 'Targaryen', 'Princess', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Edric', NULL, 'Storm', NULL, 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Gendry', NULL, NULL, 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Cersei', NULL, 'Lannister', 'Queen', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Joffrey', NULL, 'Baratheon', 'King', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Myrcella', NULL, 'Baratheon', 'Princess', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Tommen', NULL, 'Baratheon', 'Prince', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Stannis', NULL, 'Baratheon', 'King', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Selyse', NULL, 'Florent', 'Queen', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Shireen', NULL, 'Baratheon', 'Princess', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Renly', NULL, 'Baratheon', 'Lord', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Baratheon'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Bethany', NULL, 'Bolton', 'Lady', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Bolton'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Roose', NULL, 'Bolton', 'Lord', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Bolton'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Domeric', NULL, 'Bolton', NULL, 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Bolton'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Ramsay', NULL, 'Snow', 'Lord', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Bolton'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Balon', 'IX', 'Greyjoy', 'King', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Rodrik', NULL, 'Greyjoy', NULL, 'N', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Maron', NULL, 'Greyjoy', NULL, 'N', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Asha', NULL, 'Greyjoy', 'Captain', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Theon', NULL, 'Greyjoy', 'Heir', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Euron', 'III', 'Greyjoy', 'Successor', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Victarion', NULL, 'Greyjoy', 'Lord Captian', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Aeron', NULL, 'Greyjoy', 'Priest', 'Y', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Vickon', NULL, 'Greyjoy', 'Lord', 'N', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Dalton', NULL, 'Greyjoy', 'Lord Reaper', NULL, 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Dagon', NULL, 'Greyjoy', 'Lord', 'N', 'Drowned God', NULL, (SELECT HouseID FROM House WHERE HouseName='Greyjoy'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Doran', NULL, 'Martell', 'Prince', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Mellario', NULL, NULL, NULL, 'Y', 'of Norvos', NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Arianne', NULL, 'Martell', 'Heir Princess', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Quentyn', NULL, 'Martell', 'Prince', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Tystane', NULL, 'Martell', 'Prince', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Elia', NULL, 'Martell', 'Princess', 'N', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Oberyn', NULL, 'Martell', 'Prince', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Obara', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Nymeria', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Tyene', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Sarella', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Ellaria', NULL, 'Sand', NULL, 'Y', 'Lysene', NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Elia', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Obella', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Dorea', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Loreza', NULL, 'Sand', NULL, 'Y', NULL, 'Sand Snake', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Lewyn', NULL, 'Martell', 'Prince', 'N', NULL, 'Kingsguard', (SELECT HouseID FROM House WHERE HouseName='Martell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Manfrey', NULL, 'Martell', 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Martell'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Eddard', NULL, 'Stark', 'Warden Of The North', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Catelyn', NULL, 'Stark', 'Lady of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Robb', NULL, 'Stark', 'Prince of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Sansa', NULL, 'Stark', 'Princess of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Bran', NULL, 'Stark', 'Prince of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Arya', NULL, 'Stark', 'Princess of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Jon', NULL, 'Snow', 'Bastard of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Rickon', NULL, 'Stark', 'Prince of Winterfell', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Benjen', NULL, 'Stark', 'First Ranger', 'Y', 'Old Gods', NULL, (SELECT HouseID FROM House WHERE HouseName='Stark'));

INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Mace', NULL, 'Tyrell', 'Lord', 'Y', NULL, 'Hand of the King', (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Willas', NULL, 'Tyrell', NULL, 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Garlen', NULL, 'Tyrell', NULL, 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Loras', NULL, 'Tyrell', 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Margaery', NULL, 'Tyrell', 'Queen', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Olenna', NULL, 'Redwine', 'Lady', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));
INSERT INTO Character (FirstName, MiddleName, LastName, Position, IsAlive, Religion, Organization, HouseID) VALUES ('Moryn', NULL, 'Tyrell', 'Ser', 'Y', NULL, NULL, (SELECT HouseID FROM House WHERE HouseName='Tyrell'));