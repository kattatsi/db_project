USE mydb;
SELECT @@secure_file_priv;
SET SESSION sql_mode='NO_AUTO_VALUE_ON_ZERO';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv'
INTO TABLE Nutrition_Info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Recipe_name, fat, protein, carbs);


UPDATE Nutrition_Info AS NI
INNER JOIN Recipe AS R ON NI.Recipe_name = R.name
SET
    NI.Recipe_name = R.name
WHERE EXISTS (
    SELECT count(R.name) FROM Recipe WHERE R.name = NI.Recipe_name
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Image.csv' INTO TABLE Image FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\National_Cuisine.csv' INTO TABLE National_Cuisine FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Food_Groups.csv' INTO TABLE Food_Groups FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Ingredients.csv' INTO TABLE Ingredients FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Meals.csv' INTO TABLE Meals FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Labels.csv' INTO TABLE Labels FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Equipment.csv' INTO TABLE Equipment FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Recipe_has_Equipment.csv' INTO TABLE Recipe_has_Equipment FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;







LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Thematic_Section.csv' INTO TABLE Thematic_Section FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Cook.csv' INTO TABLE Cook FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (cook_id, cook_first_name, cook_last_name, phone_number, date_of_birth, years_of_experience, position_rank, Image_id);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Tips.csv' INTO TABLE Tips FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Recipe_has_Thematic_Section.csv' INTO TABLE Recipe_has_Thematic_Section FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Cook_has_National_Cuisine.csv' INTO TABLE Cook_has_National_Cuisine FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Recipe_has_Ingredients.csv' INTO TABLE Recipe_has_Ingredients FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Recipe.csv' INTO TABLE Recipe FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS ;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Steps.csv' INTO TABLE Steps FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;


/*LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv' INTO TABLE Nutrition_Info FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Recipe_name, fat, protein, carbs) SET Recipe_name = VALUES(Recipe_name),  SET fat = VALUES(fat),  protein = VALUES(protein),  carbs = VALUES(carbs); */







/*CREATE TABLE Nutrition_Info_backup AS SELECT * FROM Nutrition_Info;
TRUNCATE TABLE Nutrition_Info;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv'
INTO TABLE Nutrition_Info_backup
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

INSERT INTO Nutrition_Info (Recipe_name, fat, protein, carbs, calories_per_portion)
SELECT Recipe_name, fat, protein, carbs, calories_per_portion
FROM Nutrition_Info_backup
ON DUPLICATE KEY UPDATE
    fat = VALUES(fat),
    protein = VALUES(protein),
    carbs = VALUES(carbs),
	calories_per_portion = VALUES(calories_per_portion);

DROP TABLE Nutrition_Info_backup;
*/



/*CREATE TABLE Nutrition_Info_backup AS SELECT * FROM Nutrition_Info;
TRUNCATE TABLE Nutrition_Info;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv'
INTO TABLE Nutrition_Info_backup
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Recipe_name, @fat, @protein, @carbs, @calories_per_portion)
SET 
    Recipe_name = @Recipe_name,
    fat = NULLIF(@fat, ''),
    protein = NULLIF(@protein, ''),
    carbs = NULLIF(@carbs, ''),
    calories_per_portion = NULLIF(@calories_per_portion, '');

DROP TABLE Nutrition_Info_backup;
*/



/*
-- Create a backup of the Nutrition_Info table
CREATE TABLE Nutrition_Info_backup AS SELECT * FROM Nutrition_Info;

-- Truncate the Nutrition_Info table
TRUNCATE TABLE Nutrition_Info;

-- Load data from the CSV file into the Nutrition_Info_backup table
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv'
INTO TABLE Nutrition_Info_backup
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert or update the data into the Nutrition_Info table
INSERT INTO Nutrition_Info (Recipe_name, fat, protein, carbs, calories_per_portion)
SELECT Recipe_name, fat, protein, carbs, calories_per_portion
FROM Nutrition_Info_backup AS new
ON DUPLICATE KEY UPDATE
    fat = new.fat,
    protein = new.protein,
    carbs = new.carbs,
    calories_per_portion = new.calories_per_portion;

-- Drop the backup table
DROP TABLE Nutrition_Info_backup;*/





/*
-- Create a backup of the Nutrition_Info table
CREATE TABLE Nutrition_Info_backup AS SELECT * FROM Nutrition_Info;


-- Truncate the Nutrition_Info table
TRUNCATE TABLE Nutrition_Info;
*/

/*
-- Load data from the CSV file into the Nutrition_Info_backup table
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv'
INTO TABLE Nutrition_Info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Recipe_name, @fat, @protein, @carbs)
SET
    Recipe_name = @Recipe_name,
    fat = NULLIF(@fat, ' '),
    protein = NULLIF(@protein, ' '),
    carbs = NULLIF(@carbs, ' '),
WHERE EXISTS (
    SELECT 1 FROM Recipe WHERE name = @Recipe_name
);    

-- Insert or update the data into the Nutrition_Info table
INSERT INTO Nutrition_Info (Recipe_name, fat, protein, carbs) /*, calories_per_portion)
SELECT Recipe_name, fat, protein, carbs /*, calories_per_portion
AS new
ON DUPLICATE KEY UPDATE
    fat = new.fat,
    protein = new.protein,
    carbs = new.carbs;
    /*calories_per_portion = new.calories_per_portion;*/



/*
CREATE TEMPORARY TABLE IF NOT EXISTS Temp_Nutrition_Info (
    Recipe_name VARCHAR(100),
    fat INT,
    protein INT,
    carbs INT
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nutrition_Info.csv' 
INTO TABLE Temp_Nutrition_Info 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS (@Recipe_name, @fat, @protein, @carbs);

INSERT INTO Nutrition_Info (Recipe_name, fat, protein, carbs)
SELECT TNI.Recipe_name, TNI.fat, TNI.protein, TNI.carbs
FROM Temp_Nutrition_Info AS TNI
WHERE EXISTS (
    SELECT 1 FROM Recipe WHERE name = TNI.Recipe_name
);

DROP TEMPORARY TABLE IF EXISTS Temp_Nutrition_Info;

*/







/*INSERT INTO Nutrition_Info (Recipe_name, fat, protein, carbs)
SELECT Recipe_name, fat, protein, carbs
FROM Nutrition_Info
WHERE EXISTS (
    SELECT 1 FROM Recipe WHERE name = @Recipe_name
);
*/