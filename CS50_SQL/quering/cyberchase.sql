create database cyberchase;
use cyberchase;

create table episodes(
	id int auto_increment primary key,
    season int,
    episode_in_season int,
    title varchar(100),
    topic varchar(50),
    air_date date,
    production_code varchar(20)
);
-- Temporada 1
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(1, 1, 1, 'Lost My Marbles', 'Navigation', '2002-01-21', 'CYB001'),
(2, 1, 2, 'Castleblanca', 'Using Data', '2002-01-22', 'CYB002'),
(3, 1, 3, 'The Eye of Rom', 'Geometric Patterns', '2002-01-23', 'CYB003'),
(4, 1, 4, 'Whale of a Tale', 'Estimation', '2002-01-24', 'CYB004'),
(5, 1, 5, 'Double Trouble', 'Growth Patterns', '2002-01-25', 'CYB005'),
(6, 1, 6, 'Less Than Zero', 'Negative Numbers', '2002-01-28', 'CYB006'),
(7, 1, 7, 'The Poddleville Case', 'Patterns', '2002-01-29', 'CYB006'),
(8, 1, 8, 'And They Counted Happily Ever After', 'Number, Operations, and Counting', '2002-01-30', 'CYB003'),
(9, 1, 9, 'Clock Like An Egyptian', 'Time Keeping', '2002-01-31', 'CYB009'),
(10, 1, 10, 'Secrets of Symmetria', 'Symmetry', '2002-02-01', 'CYB008'),
(11, 1, 11, 'A Day at the Spa', 'Combinations', '2002-02-04', 'CYB011'),
(12, 1, 12, 'Of All The Luck', 'Logic', '2002-02-05', 'CYB018'),
(13, 1, 13, 'Eureeka', '2D and 3D Geometry', '2002-02-06', 'CYB015'),
(14, 1, 14, 'Cool It', 'Liquid Volume', '2002-02-07', 'CYB014'),
(15, 1, 15, 'Find Those Gleamers', 'Algebra', '2002-02-08', 'CYB017'),
(16, 1, 16, 'Codename: Icky', 'Codes', '2002-02-11', 'CYB019'),
(17, 1, 17, 'Return to Sensible Flats', 'Line Graphs', '2002-02-12', 'CYB012'),
(18, 1, 18, 'Problem Solving in Shangri-La', 'Working Backwards', '2002-02-13', 'CYB016'),
(19, 1, 19, 'Send in the Clones', 'Multiplication', '2002-02-14', 'CYB020'),
(20, 1, 20, 'Trading Places', 'Monetary Systems', '2002-03-14', 'CYB021'),
(21, 1, 21, 'Less Than Zero', 'Negative Numbers', '2002-07-03', 'CYB013'),
(22, 1, 22, 'Model Behavior', 'Using Models', '2002-07-10', 'CYB023'),
(23, 1, 23, 'Fortress of Attitude', 'Linear Measurements', '2002-07-17', 'CYB024'),
(24, 1, 24, 'Size Me Up', 'Scale and Size', '2002-07-24', 'CYB025'),
(25, 1, 25, 'A Battle of Equals', 'Balancing Equations', '2002-07-31', 'CYB026'),
(26, 1, 26, 'Out of Sync', 'Patterns in Music', '2002-08-07', 'CYB022');
-- Temporada 2
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(27, 2, 1, 'Hugs & Witches', 'Median of Data (Average)', '2003-02-14', 'CYB029'),
(28, 2, 2, 'Totally Rad', 'Perimeter/Area', '2003-03-31', 'CYB027'),
(29, 2, 3, 'Harriet Hippo & the Mean Green', 'Equivalent Fractions', '2003-04-01', 'CYB027'),
(30, 2, 4, 'True Colors', 'Counter Examples', '2003-04-02', 'CYB028'),
(31, 2, 5, 'All the Right Angles', 'Angle Measurement', '2003-04-03', 'CYB031'),
(32, 2, 6, 'Mother''s Day', 'Decimals', '2003-05-09', 'CYB033'),
(33, 2, 7, 'The Eye of Rom', 'Inverse Operations', '2003-05-16', 'CYB032'),
(34, 2, 8, 'A Whale of a Tale', 'Ballpark estimation', '2003-05-23', 'CYB035'),
(35, 2, 9, 'Double Trouble', 'Growth by Doubling', '2003-05-30', 'CYB036'),
(36, 2, 10, 'Raising the Bar', 'Bar graphs', '2003-09-15', 'CYB037'),
(37, 2, 11, 'The Wedding Scammer', 'Problem Solving', '2003-09-16', 'CYB040'),
(38, 2, 12, 'The Guilty Party', 'Point of View', '2003-09-17', 'CYB039'),
(39, 2, 13, 'A Time to Cook', 'Elapsed Time', '2003-09-18', 'CYB038'),
(40, 2, 14, 'Trick or Treat', 'Functions', '2003-10-28', 'CYB034');
-- Temporada 3
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(41, 3, 1, 'EcoHaven CSE', 'Body Math', '2004-05-03', 'CYB043'),
(42, 3, 2, 'The Borg of the Ring', 'Circles', '2004-05-04', 'CYB041'),
(43, 3, 3, 'A World Without Zero', 'Zero', '2004-05-05', 'CYB042'),
(44, 3, 4, 'A Piece of the Action', 'Percents', '2004-05-06', 'CYB044'),
(45, 3, 5, 'The Creech Who Would be Crowned', 'Direction and Distance', '2004-05-07', 'CYB046'),
(46, 3, 6, 'The Grapes of Plath', 'High-Low Estimation', '2004-09-16', 'CYB045'),
(47, 3, 7, 'A Perfect Fit', 'Tessellations', '2004-09-23', 'CYB050'),
(48, 3, 8, 'Be Reasonable', 'Reasoning', '2004-09-30', 'CYB047'),
(49, 3, 9, 'The Snelfu Snafu (Part 1)', 'Saving Money', '2004-10-07', 'CYB051'),
(50, 3, 10, 'The Snelfu Snafu (Part 2)', 'Spending Money', '2004-10-14', 'CYB052'),
(51, 3, 11, 'Shari Spotter and the Cosmic Crumpets', 'Mixed-Number Fractions', '2004-10-28', 'CYB048'),
(52, 3, 12, 'Starlight Night', 'Finding a Simpler Case', '2004-12-31', 'CYB049');
-- Temporada 4
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(53, 4, 1, 'Balancing Act', 'Budgeting Money', '2005-04-15', 'CYB056'),
(54, 4, 2, 'The Icky Factor', 'Algebraic Thinking', '2005-04-20', 'CYB057'),
(55, 4, 3, 'Penguin Tears', 'Angles in Bouncing', '2005-07-26', 'CYB057'),
(56, 4, 4, 'Past Perfect Prediction', 'Data Prediction', '2005-07-27', 'CYB059'),
(57, 4, 5, 'Measure For Measure', 'Units of Measurement', '2005-07-28', 'CYB061'),
(58, 4, 6, 'A Change of Art', 'Line Graph Comparisons', '2005-10-03', 'CYB058'),
(59, 4, 7, 'The Case of the Missing Memory', 'Missing Information', '2005-10-04', 'CYB055'),
(60, 4, 8, 'A Crinkle In Time', 'Gears', '2005-10-05', 'CYB053'),
(61, 4, 9, 'A Broom Of One''s Own', 'Time/Distance/Speed', '2005-10-06', 'CYB060'),
(62, 4, 10, 'A Tikiville Turkey Day', 'Patterns in Nature', '2005-10-07', 'CYB062');
-- Temporada 5
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(63, 5, 1, 'The Halloween Howl', 'Division', '2006-10-31', 'CYB071'),
(64, 5, 2, 'A Clean Sweep', 'Inventions: Persistence', '2006-11-27', 'CYB063'),
(65, 5, 3, 'Designing Mr. Perfect', 'Inventions: Design for Function', '2006-11-28', 'CYB064'),
(66, 5, 4, 'EcoHaven Ooze', 'Inventions: Testing with Models', '2006-11-29', 'CYB066'),
(67, 5, 5, 'The Fairy Borg Father', 'Inventions: Refine and Optimize', '2006-11-30', 'CYB067'),
(68, 5, 6, 'The Flying Parallinis', 'Parallelograms', '2007-04-16', 'CYB065'),
(69, 5, 7, 'Crystal Clear', 'Crystals', '2007-04-17', 'CYB072'),
(70, 5, 8, 'Inside Hacker', 'Robotic Reasoning', '2007-04-18', 'CYB068'),
(71, 5, 9, 'On the Line', 'Properties of a Line', '2007-04-19', 'CYB069'),
(72, 5, 10, 'A Fraction of a Chance', 'Fractions 101', '2007-09-03', 'CYB070');
-- Temporada 6
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(73, 6, 1, 'Digit''s B-Day Surprise', 'Reading a Thermometer', '2007-11-07', 'CYB073'),
(74, 6, 2, 'When Penguins Fly', 'Population Sampling', '2007-12-12', 'CYB074'),
(75, 6, 3, 'Unhappily Ever After', 'Builders'' Math: Measurement, Geometry', '2008-02-19', 'CYB075'),
(76, 6, 4, 'Escape From Merlin''s Maze', 'Builders'' Math: Algebraic Thinking', '2008-02-20', 'CYB076'),
(77, 6, 5, 'Step By Step', 'Builders'' Math: Multi-Step Problem Solving', '2008-02-21', 'CYB077'),
(78, 6, 6, 'Team Spirit', 'Math in Sports: Number and Operation', '2008-04-08', 'CYB079'),
(79, 6, 7, 'Jimaya Jam', 'Math in Sports: Representation', '2008-04-09', 'CYB080'),
(80, 6, 8, 'A Perfect Score', 'Math in Sports: Scoring Performance', '2008-04-10', 'CYB081'),
(81, 6, 9, 'Chaos as Usual', 'Math in Sports: Data Collection', '2008-04-11', 'CYB078'),
(82, 6, 10, 'Spheres of Fears', 'Circle Diameter and Circumference', '2008-10-27', 'CYB082');
-- Temporada 7
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(83, 7, 1, 'Weather Watchers', 'Math in Weather: Fog', '2009-04-20', 'CYB083'),
(84, 7, 2, 'The Emperor Has Snow Clothes', 'Math in Weather: Tracking Storms', '2009-04-21', 'CYB084'),
(85, 7, 3, 'The X-Factor', 'Math in Weather: Multiplication Power', '2009-04-22', 'CYB085'),
(86, 7, 4, 'Blowin'' in the Wind', 'Math in Weather: Measuring Wind Speed', '2009-04-23', 'CYB086'),
(87, 7, 5, 'Father''s Day', 'Patterns in Codes', '2009-06-19', 'CYB087'),
(88, 7, 6, 'The Deedle Beast', 'Observing and Tracking Animal Behavior', '2009-10-05', 'CYB088'),
(89, 7, 7, 'Spellbound', 'Grids', '2009-10-06', 'CYB089');
-- Temporada 8
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(90, 8, 1, 'The Hacker''s Challenge', 'Solution by Trying Numbers', '2010-06-25', 'CYB090'),
(91, 8, 2, 'Face-Off!', 'Analyzing Ads (Reasoning)', '2010-07-02', 'CYB093'),
(92, 8, 3, 'Peace, Love, and Hackerness', 'Measuring with Mixed Number Fractions', '2010-07-09', 'CYB094'),
(93, 8, 4, 'Hackerized!', 'Analyzing Data', '2010-07-16', 'CYB091'),
(94, 8, 5, 'The Bluebird of Zappiness', 'Proportional reasoning', '2010-07-23', 'CYB092');
-- Temporada 9
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(95, 9, 1, 'An Urchin Matter', 'Keystone Species and Kelp-Bed Ecosystem', '2013-11-04', 'CYB095'),
(96, 9, 2, 'Going Solar', 'Solar Panels', '2013-11-05', 'CYB096'),
(97, 9, 3, 'Trash Creep', 'Fractions, Effects of Trash, and Recycling', '2013-11-06', 'CYB097'),
(98, 9, 4, 'The Cyberchase Movie (Part 1)', 'Living Space', '2014-04-21', 'CYB098'),
(99, 9, 5, 'The Cyberchase Movie (Part 2)', 'Living Space', '2014-04-22', 'CYB099');
-- Temporada 10
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(100, 10, 1, 'Fit to be Heroes', 'Exercise Goals', '2015-11-09', 'CYB101'),
(101, 10, 2, 'A Recipe for Chaos', 'Nutrition', '2015-11-10', 'CYB102'),
(102, 10, 3, 'A Seedy Business', 'Gardening/Nutrition', '2015-11-11', 'CYB103'),
(103, 10, 4, 'Parks and Recreation', 'Evidence-based Arguments', '2015-11-12', 'CYB104'),
(104, 10, 5, 'Bottled Up', 'Plastic Disposal', '2015-11-13', 'CYB105');
-- Temporada 11
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(105, 11, 1, 'Watts of Halloween Trouble', 'Energy Conservation', '2017-10-23', 'CYB106'),
(106, 11, 2, 'Creech''s Creature Quandary', 'Habitat Fragmentation', '2017-12-26', 'CYB107'),
(107, 11, 3, 'A Murky Mystery in Mermaidos', 'Thermal Pollution', '2017-12-27', 'CYB108'),
(108, 11, 4, 'Plantasaurus!', 'Air Quality', '2017-12-28', 'CYB109'),
(109, 11, 5, 'A Reboot Eve to Remember', 'Wind Energy', '2017-12-29', 'CYB110'),
(110, 11, 6, 'Housewarming Party', 'Green Roofs (Natural Thermal Insulation)', '2018-04-16', 'CYB111'),
(111, 11, 7, 'Invasion of the Funky Flower', 'Invasive Species', '2018-04-17', 'CYB112'),
(112, 11, 8, 'A Renewable Hope', 'Renewable Energy', '2018-04-18', 'CYB113'),
(113, 11, 9, 'The Migration Situation', 'Citizen Science', '2018-04-19', 'CYB114'),
(114, 11, 10, 'Back to Canalia''s Future', 'Water Consumption', '2018-04-20', 'CYB115');
-- Temporada 12
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(115, 12, 1, 'Space Waste Odyssey (Part 1)', 'Trash Vortexes and Recycling', '2019-11-29', 'CYB117'),
(116, 12, 2, 'Space Waste Odyssey (Part 2)', 'Trash Vortexes and Recycling', '2019-11-29', 'CYB118'),
(117, 12, 3, 'Giving Thanks Day', 'Pristine Produce/Food Supply', '2019-11-22', 'CYB116'),
(118, 12, 4, 'A Garden Grows in Botlyn', 'Urban Gardening', '2020-02-14', 'CYB119'),
(119, 12, 5, 'Missing Bats in Sensible Flats', 'Pollination and Ecosystems', '2020-04-17', 'CYB120'),
(120, 12, 6, 'Water Woes', 'Water Supply and Filtration', '2020-04-17', 'CYB121'),
(121, 12, 7, 'Soil Turmoil', 'Soil Health and Earthworms', '2020-04-17', 'CYB122'),
(122, 12, 8, 'Hacker Hugs a Tree', 'Deforestation and Reforestation', '2020-04-17', 'CYB123'),
(123, 12, 9, 'Pursuit of the Prism of Power', 'Operating Systems', '2020-05-08', 'CYB124'),
(124, 12, 10, 'Composting in the Clutch', 'Composting', '2020-05-08', 'CYB125'),
(125, 12, 11, 'A Camping Conundrum', 'Energy Management', '2020-05-08', 'CYB126'),
(126, 12, 12, 'Journey of a Thousand Food Miles', 'Food Miles and Local Sourcing', '2020-05-08', 'CYB127');
-- Temporada 13
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(127, 13, 1, 'Duck Stop', 'Migration', '2022-02-25', 'CYB128'),
(128, 13, 2, 'The Great Outdoors', 'Biodiversity', '2022-02-25', 'CYB129'),
(129, 13, 3, 'Coral Grief', 'Coral Reefs/Climate Change', '2022-02-25', 'CYB130'),
(130, 13, 4, 'Sustainable by Design', 'Sustainable Design', '2022-02-25', 'CYB131'),
(131, 13, 5, 'Hacker''s Bright Idea', 'Light Pollution', '2022-04-29', 'CYB132'),
(132, 13, 6, 'Buzz and the Tree', 'Arbor Day/Forestry', '2022-04-29', 'CYB133'),
(133, 13, 7, 'The Lilting Loons', 'Water Pollution', '2022-04-29', 'CYB134'),
(134, 13, 8, 'Living in Disharmony', 'Invasive Species', '2022-04-29', 'CYB135'),
(135, 13, 9, 'Traffic Trouble', 'Transportation', '2022-05-20', 'CYB136'),
(136, 13, 10, 'A Garden is Born', 'Gardening', '2022-05-20', 'CYB137');
-- Temporada 14
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(137, 14, 1, 'Clean-Up on Isle 8', 'Composting and Waste Management', '2023-04-21', 'CYB138'),
(138, 14, 2, 'Trees, Please', 'Urban Forestry', '2023-04-28', 'CYB139'),
(139, 14, 3, 'Weather or Not (Part 1)', 'Weather Patterns and Climate', '2023-05-10', 'CYB140'),
(140, 14, 4, 'Weather or Not (Part 2)', 'Weather Patterns and Climate', '2023-05-11', 'CYB141');
-- Temporada 15
INSERT INTO episodes (id, season, episode_in_season, title, topic, air_date, production_code) VALUES
(141, 15, 1, 'If You Can''t Stand the Heat', 'Urban Heat Islands', '2024-04-27', 'CYB142'),
(142, 15, 2, 'Cyberdillos in the Outfield', 'Habitat Conservation', '2024-04-27', 'CYB143'),
(143, 15, 3, 'Hacker''s Birthday Bash', 'Sustainable Celebrations', '2024-04-27', 'CYB144'),
(144, 15, 4, 'The Domino Dilemma', 'Chain Reactions in Ecosystems', '2024-04-27', 'CYB145'),
(145, 15, 5, 'A Berry Special Mother''s Day', 'Pollination and Seasons', '2024-05-11', 'CYB146'),
(146, 15, 6, 'A Fungus Among Us', 'Fungi and Decomposition', '2024-05-25', 'CYB147'),
(147, 15, 7, 'The Kite Flying Showdown', 'Wind Power and Aerodynamics', '2024-05-25', 'CYB148'),
(148, 15, 8, 'The Heat Beneath Your Feet', 'Geothermal Energy', '2024-05-25', 'CYB149');


select * from episodes;