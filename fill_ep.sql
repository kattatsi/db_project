--  Create a table to store the selection history
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

CREATE PROCEDURE `select_episode_participants`(IN episodeID INT)
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

CREATE PROCEDURE `check_participation_constraints`(IN episodeID INT)
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
            GROUP BY judge
_id
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

CREATE PROCEDURE setup_episode(IN episodeID INT)
BEGIN
-- Step 1: Select random participants
CALL select_episode_participants(episodeID);

-- Step 2: Check and enforce participation constraints
CALL check_participation_constraints(episodeID);

END //

DELIMITER ;

