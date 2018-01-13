DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180113031354');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180113031354');
-- Add your query below.

UPDATE quest_template SET PrevQuestId = 678 WHERE entry = 680; -- http://db.vanillagaming.org/?quest=680

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
