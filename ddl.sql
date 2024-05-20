-- MySQL Script generated by MySQL Workbench
-- Mon May 20 22:44:21 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Image` (
  `id` INT NOT NULL,
  `url` MEDIUMTEXT NOT NULL,
  `image_description` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `image_description_UNIQUE` (`image_description` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`National_Cuisine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`National_Cuisine` (
  `cuisine` VARCHAR(100) NOT NULL,
  `Image_id` INT NOT NULL,
  INDEX `n_c_name_index` (`cuisine` ASC) VISIBLE,
  PRIMARY KEY (`cuisine`),
  INDEX `fk_National_Cuisine_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_National_Cuisine_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Food_Groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Food_Groups` (
  `fd_ing_name` VARCHAR(100) NOT NULL,
  `fd_recipe_name` VARCHAR(100) NOT NULL,
  `decription` TEXT NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`fd_recipe_name`),
  INDEX `fk_Food_Groups_Image1_idx` (`Image_id` ASC) VISIBLE,
  UNIQUE INDEX `fd_ing_name_UNIQUE` (`fd_ing_name` ASC) VISIBLE,
  CONSTRAINT `fk_Food_Groups_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingredients` (
  `name` VARCHAR(50) NOT NULL,
  `calories_per_100g` INT NOT NULL,
  `Image_id` INT NOT NULL,
  `Food_Groups_fd_recipe_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_Ingredients_Image1_idx` (`Image_id` ASC) VISIBLE,
  INDEX `fk_Ingredients_Food_Groups1_idx` (`Food_Groups_fd_recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Ingredients_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Ingredients_Food_Groups1`
    FOREIGN KEY (`Food_Groups_fd_recipe_name`)
    REFERENCES `mydb`.`Food_Groups` (`fd_recipe_name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe` (
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  `difficulty` INT NOT NULL,
  `prep_time` INT NOT NULL,
  `cooking_time` INT NOT NULL,
  `recipe_type` ENUM('cooking', 'pastry') NOT NULL,
  `National_Cuisine` VARCHAR(100) NOT NULL,
  `portions` INT NOT NULL,
  `Image_id` INT NOT NULL,
  `Ingredients_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `time` (`prep_time` ASC, `cooking_time` ASC) INVISIBLE,
  INDEX `fk_Recipe_National_Cuisine1_idx` (`National_Cuisine` ASC) VISIBLE,
  INDEX `fk_Recipe_Image1_idx` (`Image_id` ASC) VISIBLE,
  INDEX `fk_Recipe_Ingredients1_idx` (`Ingredients_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_National_Cuisine1`
    FOREIGN KEY (`National_Cuisine`)
    REFERENCES `mydb`.`National_Cuisine` (`cuisine`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_Ingredients1`
    FOREIGN KEY (`Ingredients_name`)
    REFERENCES `mydb`.`Ingredients` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Meals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Meals` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `meal` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Recipe_name`, `meal`),
  INDEX `fk_Meals_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Meals_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Labels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Labels` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `label` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Recipe_name`, `label`),
  INDEX `fk_Labels_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Labels_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipment` (
  `name` VARCHAR(50) NOT NULL,
  `instructions` TEXT NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_Equipment_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_Equipment_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recipe_has_Equipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe_has_Equipment` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `Equipment_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Recipe_name`, `Equipment_name`),
  INDEX `fk_Recipe_has_equipment_equipment1_idx` (`Equipment_name` ASC) VISIBLE,
  INDEX `fk_Recipe_has_equipment_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_has_equipment_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_has_equipment_equipment1`
    FOREIGN KEY (`Equipment_name`)
    REFERENCES `mydb`.`Equipment` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Steps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Steps` (
  `number` INT NOT NULL,
  `description` TEXT NOT NULL,
  `Recipe_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`number`),
  INDEX `fk_Steps_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Steps_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Nutrition_Info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Nutrition_Info` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `fat` INT NOT NULL DEFAULT 0,
  `protein` INT NOT NULL DEFAULT 0,
  `carbs` INT NOT NULL DEFAULT 0,
  `calories_per_portion` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`Recipe_name`),
  INDEX `fk_Nutrition_Info_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  INDEX `calories_per_portion` (`calories_per_portion` ASC) VISIBLE,
  CONSTRAINT `fk_Nutrition_Info_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Thematic_Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Thematic_Section` (
  `name` VARCHAR(50) NOT NULL,
  `description` MEDIUMTEXT NOT NULL,
  `Image_id` INT NOT NULL,
  INDEX `thematic_index` (`name` ASC) VISIBLE,
  PRIMARY KEY (`name`),
  INDEX `fk_Thematic_Section_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_Thematic_Section_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cook`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cook` (
  `cook_id` INT NOT NULL,
  `cook_first_name` VARCHAR(45) NOT NULL,
  `cook_last_name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `age` INT NOT NULL,
  `years_of_experience` INT NOT NULL,
  `position_rank` ENUM('First cook', 'Second cook', 'Third cook', 'Sous chef', 'Head chef') NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`cook_id`),
  INDEX `cook_name_index` (`cook_first_name` ASC, `cook_last_name` ASC) INVISIBLE,
  INDEX `cook_age_index` (`age` ASC) VISIBLE,
  INDEX `cook_prof_qualification_index` (`position_rank` ASC) VISIBLE,
  INDEX `fk_Cook_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Episodes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episodes` (
  `episode_id` INT NOT NULL,
  `season` INT NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`episode_id`),
  INDEX `fk_Episodes_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_Episodes_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `mydb`.`Episode_has_cooks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episode_has_cooks` (
  `Cook_cook_id` INT NOT NULL,
  `Episodes_episode_id` INT NOT NULL,
  PRIMARY KEY (`Cook_cook_id`, `Episodes_episode_id`),
  INDEX `fk_Cook_has_Episodes_Episodes1_idx` (`Episodes_episode_id` ASC) VISIBLE,
  INDEX `fk_Cook_has_Episodes_Cook1_idx` (`Cook_cook_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_has_Episodes_Cook1`
    FOREIGN KEY (`Cook_cook_id`)
    REFERENCES `mydb`.`Cook` (`cook_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cook_has_Episodes_Episodes1`
    FOREIGN KEY (`Episodes_episode_id`)
    REFERENCES `mydb`.`Episodes` (`episode_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Score`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Score` (
  `score` INT NOT NULL,
  `cook_id` INT NOT NULL,
  `episode_id` INT NOT NULL,
  PRIMARY KEY (`cook_id`, `episode_id`),
  INDEX `fk_Score_Episode_has_cooks1_idx` (`cook_id` ASC, `episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_Score_Episode_has_cooks1`
    FOREIGN KEY (`cook_id` , `episode_id`)
    REFERENCES `mydb`.`Episode_has_cooks` (`Cook_cook_id` , `Episodes_episode_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tips`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tips` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `tip_discription` TEXT NOT NULL,
  PRIMARY KEY (`Recipe_name`),
  INDEX `fk_Tips_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Tips_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`username`));


-- -----------------------------------------------------
-- Table `mydb`.`Recipe_has_Thematic_Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe_has_Thematic_Section` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `Thematic_Section_name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Recipe_name`, `Thematic_Section_name`),
  INDEX `fk_Recipe_has_Thematic_Section_Thematic_Section1_idx` (`Thematic_Section_name` ASC) VISIBLE,
  INDEX `fk_Recipe_has_Thematic_Section_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_has_Thematic_Section_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_has_Thematic_Section_Thematic_Section1`
    FOREIGN KEY (`Thematic_Section_name`)
    REFERENCES `mydb`.`Thematic_Section` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cook_has_National_Cuisine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cook_has_National_Cuisine` (
  `Cook_cook_id` INT NOT NULL,
  `National_Cuisine_cuisine` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Cook_cook_id`, `National_Cuisine_cuisine`),
  INDEX `fk_Cook_has_National_Cuisine_National_Cuisine1_idx` (`National_Cuisine_cuisine` ASC) VISIBLE,
  INDEX `fk_Cook_has_National_Cuisine_Cook1_idx` (`Cook_cook_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_has_National_Cuisine_Cook1`
    FOREIGN KEY (`Cook_cook_id`)
    REFERENCES `mydb`.`Cook` (`cook_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cook_has_National_Cuisine_National_Cuisine1`
    FOREIGN KEY (`National_Cuisine_cuisine`)
    REFERENCES `mydb`.`National_Cuisine` (`cuisine`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Episodes_has_Recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episodes_has_Recipe` (
  `Episodes_episode_id` INT NOT NULL,
  `Recipe_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Episodes_episode_id`, `Recipe_name`),
  INDEX `fk_Episodes_has_Recipe_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  INDEX `fk_Episodes_has_Recipe_Episodes1_idx` (`Episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_Episodes_has_Recipe_Episodes1`
    FOREIGN KEY (`Episodes_episode_id`)
    REFERENCES `mydb`.`Episodes` (`episode_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Episodes_has_Recipe_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `mydb`.`Episodes_has_National_Cuisine1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episodes_has_National_Cuisine1` (
  `Episodes_episode_id` INT NOT NULL,
  `National_Cuisine_cuisine` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Episodes_episode_id`, `National_Cuisine_cuisine`),
  INDEX `fk_Episodes_has_National_Cuisine1_National_Cuisine1_idx` (`National_Cuisine_cuisine` ASC) VISIBLE,
  INDEX `fk_Episodes_has_National_Cuisine1_Episodes1_idx` (`Episodes_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_Episodes_has_National_Cuisine1_Episodes1`
    FOREIGN KEY (`Episodes_episode_id`)
    REFERENCES `mydb`.`Episodes` (`episode_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Episodes_has_National_Cuisine1_National_Cuisine1`
    FOREIGN KEY (`National_Cuisine_cuisine`)
    REFERENCES `mydb`.`National_Cuisine` (`cuisine`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);


-- -----------------------------------------------------
-- Table `mydb`.`Episode_has_judges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episode_has_judges` (
  `judge_id` INT NOT NULL,
  `Episodes_episode_id` INT NOT NULL,
  PRIMARY KEY (`judge_id`, `Episodes_episode_id`),
  INDEX `fk_Cook_has_Episodes1_Episodes1_idx` (`Episodes_episode_id` ASC) VISIBLE,
  INDEX `fk_Cook_has_Episodes1_Cook1_idx` (`judge_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_has_Episodes1_Cook1`
    FOREIGN KEY (`judge_id`)
    REFERENCES `mydb`.`Cook` (`cook_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cook_has_Episodes1_Episodes1`
    FOREIGN KEY (`Episodes_episode_id`)
    REFERENCES `mydb`.`Episodes` (`episode_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recipe_has_Ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe_has_Ingredients` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `Ingredients_name` VARCHAR(50) NOT NULL,
  `ing_quantity_in_grams` INT NOT NULL,
  PRIMARY KEY (`Recipe_name`, `Ingredients_name`),
  INDEX `fk_Recipe_has_Ingredients_Ingredients1_idx` (`Ingredients_name` ASC) VISIBLE,
  INDEX `fk_Recipe_has_Ingredients_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_has_Ingredients_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_has_Ingredients_Ingredients1`
    FOREIGN KEY (`Ingredients_name`)
    REFERENCES `mydb`.`Ingredients` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- Procedure: calories per portion

DELIMITER //

CREATE PROCEDURE IF NOT EXISTS calculate_calories_per_portion(IN Name VARCHAR(100))
BEGIN
    DECLARE total_calories INT;
    DECLARE portions INT;

    -- calculate total calories for a recipe
    SELECT SUM(ri.ing_quantity_in_grams * i.calories_per_100g / 100)
    INTO total_calories
    FROM Recipe_has_Ingredients ri
    JOIN Ingredients i ON ri.Ingredients_name = i.name
    WHERE ri.Recipe_name = Name;

    -- receive number of portions
    SELECT r.portions
    INTO portions
    FROM Recipe r
    WHERE r.name = Name;

    
	
	-- update "calories_per_portion" in table "Nutrition_Info"
    UPDATE Nutrition_Info
    SET calories_per_portion = total_calories / portions
    WHERE Recipe_name = name;
	
	
    INSERT INTO Nutrition_Info (Recipe_name, calories_per_portion)
    VALUES (Name, total_calories / portions)
	ON DUPLICATE KEY UPDATE calories_per_portion = VALUES(calories_per_portion);
    
	
END //

DELIMITER ;



-- Triggers

-- for inserts/updates/deletes of an ingredient
DELIMITER //

CREATE TRIGGER IF NOT EXISTS update_calories_per_portion_after_insert
AFTER INSERT ON Recipe_has_Ingredients
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name);
END //


CREATE TRIGGER IF NOT EXISTS update_calories_per_portion_after_update
AFTER UPDATE ON Recipe_has_Ingredients
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name);
END //


CREATE TRIGGER IF NOT EXISTS update_calories_per_portion_after_delete
AFTER DELETE ON Recipe_has_Ingredients
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(OLD.Recipe_name);
END //

DELIMITER ;


-- for inserts/updates/deletes of a recipe
DELIMITER //

CREATE TRIGGER IF NOT EXISTS update_calories_on_recipe_insert
AFTER INSERT ON Recipe
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.name);
END //


CREATE TRIGGER IF NOT EXISTS update_calories_on_recipe_update
AFTER UPDATE ON Recipe
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.name);
END //


CREATE TRIGGER IF NOT EXISTS update_calories_on_recipe_delete
AFTER DELETE ON Recipe
FOR EACH ROW
BEGIN
    DELETE FROM Nutrition_Info WHERE Recipe_name = OLD.name;
END //

DELIMITER ;





-- Trigger: Cook's age 

-- for inserts
DELIMITER //
CREATE TRIGGER IF NOT EXISTS set_age_before_insert
BEFORE INSERT ON cook
FOR EACH ROW
BEGIN
    SET NEW.age = YEAR(CURDATE()) - YEAR(NEW.date_of_birth) - 
                  (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(NEW.date_of_birth, '%m%d'));
END //

DELIMITER ;


-- for updates
DELIMITER //
CREATE TRIGGER IF NOT EXISTS set_age_before_update
BEFORE UPDATE ON cook
FOR EACH ROW
BEGIN
    SET NEW.age = YEAR(CURDATE()) - YEAR(NEW.date_of_birth) - 
                  (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(NEW.date_of_birth, '%m%d'));
END //

DROP PROCEDURE IF EXISTS `select_episode_participants`;
DROP PROCEDURE IF EXISTS `check_participation_constraints`;
DROP PROCEDURE IF EXISTS setup_episode;

DELIMITER ;






-- Random Selection

-- Create a table to store the selection history
CREATE TABLE IF NOT EXISTS `mydb`.`Episode_Selections` (
    `episode_id` INT NOT NULL,
    `cuisine` VARCHAR(100) NOT NULL,
    `cook_id` INT NOT NULL,
    `judge_id` INT,
    `recipe_name` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`episode_id`, `cuisine`, `cook_id`, `recipe_name`),
    INDEX `fk_Episode_Selections_Cuisine_idx` (`cuisine` ASC) VISIBLE,
    INDEX `fk_Episode_Selections_Cook_idx` (`cook_id` ASC) VISIBLE,
    INDEX `fk_Episode_Selections_Recipe_idx` (`recipe_name` ASC) VISIBLE,
    CONSTRAINT `fk_Episode_Selections_Cuisine`
        FOREIGN KEY (`cuisine`)
        REFERENCES `mydb`.`National_Cuisine` (`cuisine`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `fk_Episode_Selections_Cook`
        FOREIGN KEY (`cook_id`)
        REFERENCES `mydb`.`Cook` (`cook_id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `fk_Episode_Selections_Recipe`
        FOREIGN KEY (`recipe_name`)
        REFERENCES `mydb`.`Recipe` (`name`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Create the stored procedure for random selection
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS `select_episode_participants`(IN episodeID INT)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE cuisine VARCHAR(100);
    DECLARE cook_id INT;
    DECLARE recipe_name VARCHAR(100);

    -- Cursors for iterating over the selected cuisines
    DECLARE cuisine_cursor CURSOR FOR
        SELECT cuisine FROM National_Cuisine ORDER BY RAND() LIMIT 10;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Temporary table to store selected cooks
    CREATE TEMPORARY TABLE IF NOT EXISTS Selected_Cooks (
        cuisine VARCHAR(100),
        cook_id INT,
        recipe_name VARCHAR(100),
        PRIMARY KEY (cuisine, cook_id, recipe_name)
    );

    -- Selecting 10 random cuisines
    OPEN cuisine_cursor;
    read_loop: LOOP
        FETCH cuisine_cursor INTO cuisine;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Select 10 random cooks for each cuisine
        INSERT INTO Selected_Cooks (cuisine, cook_id, recipe_name)
        SELECT nc.cuisine, c.cook_id, r.name
        FROM National_Cuisine nc
        JOIN Cook c ON nc.cuisine = c.cook_id
        JOIN Recipe r ON nc.cuisine = r.National_Cuisine
        WHERE nc.cuisine = cuisine
        ORDER BY RAND()
        LIMIT 10;
    END LOOP;
    CLOSE cuisine_cursor;

    -- Insert selected cooks into Episode_Selections table
    INSERT INTO Episode_Selections (episode_id, cuisine, cook_id, recipe_name)
    SELECT episodeID, cuisine, cook_id, recipe_name
    FROM Selected_Cooks;

    -- Select 3 random judges for the episode
    INSERT INTO Episode_Selections (episode_id, cuisine, cook_id, recipe_name, judge_id)
    SELECT episodeID, NULL, NULL, NULL, c.cook_id
    FROM Cook c
    WHERE c.rank IN ('αρχιμάγειρας')
    ORDER BY RAND()
    LIMIT 3;

    -- Cleanup temporary table
    DROP TEMPORARY TABLE IF EXISTS Selected_Cooks;
END //

DELIMITER ;

-- see if there is  no consecutive participation for more than 3 episodes
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS `check_participation_constraints`(IN episodeID INT)
BEGIN
    -- Ensure no cook participates in more than 3 consecutive episodes
    DELETE FROM Episode_Selections
    WHERE cook_id IN (
        SELECT cook_id
        FROM (
            SELECT cook_id, COUNT(*) AS participation_count
            FROM Episode_Selections
            WHERE episode_id BETWEEN episodeID - 2 AND episodeID
            GROUP BY cook_id
            HAVING participation_count > 3
        ) AS subquery
    );

    -- Ensure no judge participates in more than 3 consecutive episodes
    DELETE FROM Episode_Selections
    WHERE judge_id IN (
        SELECT judge_id
        FROM (
            SELECT judge_id, COUNT(*) AS participation_count
            FROM Episode_Selections
            WHERE episode_id BETWEEN episodeID - 2 AND episodeID
            GROUP BY judge_id
HAVING participation_count > 3
) AS subquery
);

-- Ensure no cuisine is featured in more than 3 consecutive episodes
DELETE FROM Episode_Selections
WHERE cuisine IN (
    SELECT cuisine
    FROM (
        SELECT cuisine, COUNT(*) AS participation_count
        FROM Episode_Selections
        WHERE episode_id BETWEEN episodeID - 2 AND episodeID
        GROUP BY cuisine
        HAVING participation_count > 3
    ) AS subquery
);

-- Ensure no recipe is featured in more than 3 consecutive episodes
DELETE FROM Episode_Selections
WHERE recipe_name IN (
    SELECT recipe_name
    FROM (
        SELECT recipe_name, COUNT(*) AS participation_count
        FROM Episode_Selections
        WHERE episode_id BETWEEN episodeID - 2 AND episodeID
        GROUP BY recipe_name
        HAVING participation_count > 3
    ) AS subquery
);
END //

DELIMITER ;

-- Final stored procedure to manage the entire selection and validation process
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS setup_episode(IN episodeID INT)
BEGIN
-- Step 1: Select random participants
CALL select_episode_participants(episodeID);

-- Step 2: Check and enforce participation constraints
CALL check_participation_constraints(episodeID);

END //

DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
