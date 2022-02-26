DELETE FROM `addon_account` WHERE `name` = 'society_marijuana';
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_marijuana', 'Marijuana Farm', 1)
;

DELETE FROM `jobs` WHERE `name` = 'marijuana';
INSERT INTO `jobs` (name, label) VALUES
	('marijuana', 'Marijuana Farm')
;

DELETE FROM `job_grades` WHERE `job_name` = 'marijuana';
INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('marijuana',0,'farmer','Farmer',20,'{}','{}'),
	('marijuana',1,'shopkeeper','Shopkeeper',40,'{}','{}'),
	('marijuana',2,'manager','Manager',60,'{}','{}'),
	('marijuana',3,'boss','Owner',100,'{}','{}')
;
