DELIMITER //

CREATE PROCEDURE calculate_calories_per_portion(IN recipeID INT)
BEGIN
    DECLARE total_calories INT;
    DECLARE portions INT;

    -- Υπολογισμός συνολικών θερμίδων για τη συνταγή
    SELECT SUM(ri.ing_quantity_in_grams * i.calories_per_100g / 100)
    INTO total_calories
    FROM Recipe_has_Ingredients ri
    JOIN Ingredients i ON ri.Ingredients_name = i.name
    WHERE ri.Recipe_name = recipeID;

    -- Λήψη αριθμού μερίδων για τη συνταγή
    SELECT portions
    INTO portions
    FROM Recipe
    WHERE name = recipeID;

    -- Εισαγωγή ή ενημέρωση θερμίδων ανά μερίδα στον πίνακα nutrition_info
    INSERT INTO Nutrition_Info (Recipe_name, calories_per_portion)
    VALUES (recipeID, total_calories / portions)
    ON DUPLICATE KEY UPDATE calories_per_portion = VALUES(calories_per_portion);
END //

DELIMITER ;

-- Trigger που εκτελεί τη stored procedure κάθε φορά που εισάγεται ή ενημερώνεται ένα υλικό συνταγής
CREATE TRIGGER update_calories_per_portion_after_insert
AFTER INSERT ON Recipe_has_Ingredients
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name)
END //

DELIMITER ;

CREATE TRIGGER update_calories_per_portion_after_update
AFTER UPDATE ON Recipe_has_Ingredients
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name)
END //

DELIMITER ;

-- Trigger που εκτελεί τη stored procedure κάθε φορά που εισάγεται ή ενημερώνεται μια συνταγή
CREATE TRIGGER update_calories_on_recipe_insert
AFTER INSERT ON Recipe
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name)
END //

DELIMITER ;

CREATE TRIGGER update_calories_on_recipe_update
AFTER UPDATE ON Recipe
FOR EACH ROW
BEGIN
    CALL calculate_calories_per_portion(NEW.Recipe_name)
END //

DELIMITER ;