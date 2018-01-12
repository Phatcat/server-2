DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180112130325');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180112130325');
-- Add your query below.

-- issue #286 https://web.archive.org/web/20070115075917/http://www.thottbot.com:80/?qu=902 required min level should be 11 for the below quests.
UPDATE quest_template SET MinLevel = 11, QuestLevel = 14 WHERE entry = 900; -- http://www.wowhead.com/quest=900/samophlange
UPDATE quest_template SET MinLevel = 11, QuestLevel = 14 WHERE entry = 901; -- http://www.wowhead.com/quest=901/samophlange
UPDATE quest_template SET MinLevel = 11, QuestLevel = 16 WHERE entry = 902; -- http://www.wowhead.com/quest=902/samophlange

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
