-- creatures

DELETE FROM `creature_template` WHERE `entry` IN (999900,999901,999902,999903,999904,999905,999906,999907,999908,999909,999910,999911,999912,999913,999914,999915,999916,999917,999918,999919,999922,999923,999924,999926,999927,999928,999929);
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `minlevel`, `maxlevel`, `faction_h`, `faction_a`, `npcflag`, `speed_walk`, `speed_run`, `Health_mod`, `InhabitType`, `MovementType`, `unit_flags`) VALUES 
(999900, 21277, 'T13 Normal Pve Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999901, 21277, 'Pve Weapons 406 - 416', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999902, 21277, 'T13 Heroic Pve Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999903, 21277, 'T12.5 Pve OffSet', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999904, 21277, 'S11 PvP Weapons', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999905, 21277, 'S11 PvP Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999906, 21277, 'T12 Heroic Pve Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999907, 21277, 'Pve Weapons 372 - 378', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999908, 21277, 'T12 Pve OffSet', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999909, 21277, 'Legendary Weapons', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999910, 21277, 'S9 PvP Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999911, 21277, 'S9 PvP Weapons', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999912, 21277, 'Gems', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999913, 21277, 'Enchants', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999914, 21277, 'T11 Pve OffSet', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999915, 21277, 'T11 Pve Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999916, 21277, 'Misc', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999917, 21277, 'Pve Weapons 359 - 365', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999918, 21277, 'S10 PvP Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999919, 21277, 'S10 PvP Weapons', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999922, 21277, 'T12 Normal Pve Gear', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999923, 21277, 'Pve Weapons 397 - 403', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999924, 21277, 'Pve Weapons 384 - 391', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999926, 21277, 'T13 Pve OffSet', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999927, 21277, 'Mounts', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999928, 21277, 'Rare Mounts Rares', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4),
(999929, 21277, 'Prestige Mounts', 'Vendor', 83, 83, 35, 35, 129, 1.14286, 1, 1, 3, 0, 4);
