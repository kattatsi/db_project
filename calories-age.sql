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