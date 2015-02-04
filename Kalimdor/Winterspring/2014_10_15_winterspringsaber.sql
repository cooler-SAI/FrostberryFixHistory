-- Winterspring saber questchain 54694
-- creature_questrelation
DELETE FROM `creature_questrelation` WHERE `id` = 10618;
INSERT INTO `creature_questrelation` VALUES
(10618, 29032), -- Get Them While They're Young
(10618, 29034); -- They Grow Up So Fast

-- creature_involvedrelation
DELETE FROM `creature_involvedrelation` WHERE `id` = 10618;
INSERT INTO `creature_involvedrelation` VALUES
(10618, 29032), -- Get Them While They're Young
(10618, 29034); -- They Grow Up So Fast

-- questchain adjustment
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = 0, `flags` = 8, `specialflags` = 0 WHERE `id` = 29032;
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = 29032, `flags` = 8, `specialflags` = 0 WHERE `id` = 29034;
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = -29034, `flags` = 12296, `specialflags` = 1, `ExclusiveGroup` = 29035 WHERE `id` = 29035;
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = -29034, `flags` = 12296, `specialflags` = 1, `ExclusiveGroup` = 29035  WHERE `id` = 29037;
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = -29034, `flags` = 12296, `specialflags` = 1, `ExclusiveGroup` = 29035  WHERE `id` = 29038;
UPDATE `quest_template` SET `requiredRaces` = 2098253, `prevQuestId` = -29034, `flags` = 12296, `specialflags` = 1, `ExclusiveGroup` = 29035  WHERE `id` = 29040;

-- Cub
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 51677;

-- Cub's First Toy
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 51749;
-- Hunting Practice
UPDATE `creature_template` SET `AIName` = 'SmartAI', `unit_flags2` = 2 WHERE `entry` = 51711;
-- 'Borrowing' From the Winterfell
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 208189;

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,95967,0,0,31,0,3,51677,0,0,0,0,'','Spell implecit target Cub (Borrowing From the Winterfell)'),
(13,1,95994,0,0,31,0,3,51677,0,0,0,0,'','Spell implecit target Cub (Borrowing From the Winterfell)'),
(13,1,95968,0,0,31,0,3,51677,0,0,0,0,'','Spell implecit target Cub (Borrowing From the Winterfell)');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (51677, 51749, 51711);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `comment`) VALUES
-- Cub's First Toy
(51749, 0, 0, 0, 1, 100, 0, 1, 1, 1, 1, 11, 96060, 3, 0, 0, 0, 0, 11, 51677, 100, 0, 'On OOC cast spell on Cub'),
(51677, 0, 0, 1, 8, 100, 0, 96060, 1, 1, 1, 29, 0, 0, 51749, 0, 0, 0, 11, 51749, 100, 0, 'On spell hit follow target'),
(51677, 0, 1, 0, 61, 100, 0, 0, 0, 0, 0, 33, 51763, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On Link give questcredit'),
-- Hunting Practice
(51711, 0, 0, 0, 1, 100, 0, 1000, 1000, 1000, 1000, 11, 54694, 3, 0, 0, 0, 0, 11, 51677, 100, 0, 'On OOC cast spell on Cub'),
(51711, 0, 1, 0, 6, 100, 1, 0, 0, 0, 0, 33, 51711, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On Death give questcredit'),
(51677, 0, 2, 3, 8, 100, 0, 54694, 1, 1, 1, 29, 0, 0, 51711, 0, 0, 0, 11, 51711, 20, 0, 'On spell hit follow target'),
(51677, 0, 3, 0, 61, 100, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 11, 51711, 10, 0, 'On Link kill target'),
-- A Cub's Carvings
(51677, 0, 4, 0, 8, 100, 0, 95968, 1, 1, 1, 33, 51694, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On spell hit give questcredit'),
-- 'Borrowing' From the Winterfell
(51677, 0, 5, 0, 8, 100, 0, 95994, 1, 1, 1, 33, 51700, 0, 0, 0, 0, 0, 18, 100, 0, 0, 'On spell hit give questcredit');

-- Hunting Practice
DELETE FROM `gameobject` WHERE `id` = 208192;
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `spawntimesecs`, `animprogress`, `state`) VALUES
(208192,'1','618','618','1','1','7176.43','-4543.22','610.922', 120, 255, 1),
(208192,'1','618','618','1','1','7177.93','-4400.53','650.567', 120, 255, 1),
(208192,'1','618','618','1','1','7387.81','-4602.67','600.693', 120, 255, 1),
(208192,'1','618','618','1','1','7316.94','-4540.82','590.226', 120, 255, 1),
(208192,'1','618','618','1','1','7314.13','-4585.85','590.125', 120, 255, 1),
(208192,'1','618','618','1','1','7242.25','-4181.44','714.903', 120, 255, 1),
(208192,'1','618','2253','1','1','7221.08','-4119.78','713.967', 120, 255, 1),
(208192,'1','618','2253','1','1','7328.56','-3967.18','682.447', 120, 255, 1),
(208192,'1','618','618','1','1','7500.81','-4022.65','701.013', 120, 255, 1),
(208192,'1','618','2253','1','1','7432.2','-4045.84','695.472', 120, 255, 1),
(208192,'1','618','2253','1','1','7341.36','-4085.25','700.425', 120, 255, 1),
(208192,'1','618','2253','1','1','7351.1','-4012.77','707.793', 120, 255, 1),
(208192,'1','618','618','1','1','7527.33','-4189.46','678.638', 120, 255, 1),
(208192,'1','618','618','1','1','7461.98','-4146.23','686.711', 120, 255, 1),
(208192,'1','618','618','1','1','7380.25','-4179.35','693.19', 120, 255, 1),
(208192,'1','618','618','1','1','7483.44','-4274.31','653.393', 120, 255, 1),
(208192,'1','618','618','1','1','7389.34','-4307.97','682.085', 120, 255, 1),
(208192,'1','618','618','1','1','7432.5','-4360.44','673.127', 120, 255, 1),
(208192,'1','618','618','1','1','7377.54','-4474.83','635.731', 120, 255, 1),
(208192,'1','618','618','1','1','7535.5','-4329.72','629.334', 120, 255, 1),
(208192,'1','618','618','1','1','7416.8','-4408.62','678.938', 120, 255, 1),
(208192,'1','618','618','1','1','7393.95','-4541.65','596.225', 120, 255, 1),
(208192,'1','618','618','1','1','7515.41','-4493.1','603.606', 120, 255, 1),
(208192,'1','618','618','1','1','7541.26','-4432.06','604.767', 120, 255, 1),
(208192,'1','618','618','1','1','7487.58','-4611.85','628.904', 120, 255, 1),
(208192,'1','618','618','1','1','7453.35','-4555.63','603.202', 120, 255, 1),
(208192,'1','618','618','1','1','7578.53','-4590.09','634.583', 120, 255, 1),
(208192,'1','618','618','1','1','7521.14','-4651.07','649.567', 120, 255, 1),
(208192,'1','618','618','1','1','7607.58','-4512.61','621.267', 120, 255, 1),
(208192,'1','618','618','1','1','7602','-4285.34','640.683', 120, 255, 1),
(208192,'1','618','618','1','1','7587.73','-4208.76','668.96', 120, 255, 1),
(208192,'1','618','618','1','1','7583.25','-4079.43','695.405', 120, 255, 1),
(208192,'1','618','2241','1','1','7677.34','-4218.33','681.473', 120, 255, 1),
(208192,'1','618','618','1','1','7701.23','-4444.69','642.981', 120, 255, 1),
(208192,'1','618','618','1','1','7781.62','-4443.46','657.186', 120, 255, 1),
(208192,'1','618','618','1','1','7711.4','-4601.76','691.744', 120, 255, 1),
(208192,'1','618','618','1','1','7784.03','-4630.81','704', 120, 255, 1),
(208192,'1','618','2241','1','1','7730.56','-4196.05','681.227', 120, 255, 1),
(208192,'1','618','2241','1','1','7679.59','-4049.32','703.93', 120, 255, 1),
(208192,'1','618','2241','1','1','7680.78','-3956.5','705.36', 120, 255, 1),
(208192,'1','618','2241','1','1','7762.87','-3996.27','693.254', 120, 255, 1),
(208192,'1','618','2241','1','1','7791.19','-4106.13','684.914', 120, 255, 1),
(208192,'1','618','2241','1','1','7804.2','-4171.5','683.151', 120, 255, 1),
(208192,'1','618','2241','1','1','7759.36','-4262.81','690.977', 120, 255, 1),
(208192,'1','618','2241','1','1','7803.31','-4324.59','713.106', 120, 255, 1),
(208192,'1','618','618','1','1','7830.72','-4520.71','695.077', 120, 255, 1),
(208192,'1','618','618','1','1','7907.27','-4551.06','703.433', 120, 255, 1),
(208192,'1','618','618','1','1','7932.02','-4479.87','707.611', 120, 255, 1),
(208192,'1','618','618','1','1','7913.21','-4382.29','717.356', 120, 255, 1),
(208192,'1','618','2241','1','1','7855.85','-4119.4','689.63', 120, 255, 1),
(208192,'1','618','2241','1','1','7911.98','-4310.31','717.611', 120, 255, 1),
(208192,'1','618','2241','1','1','7951.79','-4208.64','695.166', 120, 255, 1),
(208192,'1','618','2241','1','1','7945.82','-4128.51','687.034', 120, 255, 1),
(208192,'1','618','2241','1','1','7652.82','-3808.75','689.004', 120, 255, 1),
(208192,'1','618','2241','1','1','7596.77','-3930.46','687.221', 120, 255, 1),
(208192,'1','618','2241','1','1','7559.03','-3856.21','687.942', 120, 255, 1);