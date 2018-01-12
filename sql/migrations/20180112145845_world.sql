DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180112145845');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180112145845');
-- Add your query below.

UPDATE quest_template SET PrevQuestId = 76 WHERE entry = 239; -- http://db.vanillagaming.org/?quest=239

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
