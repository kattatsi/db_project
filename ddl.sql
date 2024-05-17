-- MySQL Script generated by MySQL Workbench
-- Fri May 17 21:43:10 2024
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
  `calories_per_100` INT NOT NULL,
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
  `type` VARCHAR(50) NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`type`),
  INDEX `fk_Meals_Image1_idx` (`Image_id` ASC) VISIBLE,
  CONSTRAINT `fk_Meals_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Labels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Labels` (
  `label` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`label`))
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
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Nutrition_Info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Nutrition_Info` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `fat` INT NOT NULL,
  `protein` INT NOT NULL,
  `carbs` INT NOT NULL,
  `calories` INT NOT NULL,
  PRIMARY KEY (`Recipe_name`),
  INDEX `fk_Nutrition_Info_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
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
  `rank` ENUM('Α΄ μάγειρας', 'Β΄ μάγειρας', 'Γ΄ μάγειρας', 'βοηθός
αρχιμάγειρα', 'αρχιμάγειρας') NOT NULL,
  `specialisation` VARCHAR(45) NOT NULL,
  `Image_id` INT NOT NULL,
  PRIMARY KEY (`cook_id`),
  INDEX `cook_name_index` (`cook_first_name` ASC, `cook_last_name` ASC) INVISIBLE,
  INDEX `cook_age_index` (`age` ASC) VISIBLE,
  INDEX `cook_prof_qualification_index` (`rank` ASC) VISIBLE,
  INDEX `fk_Cook_Image1_idx` (`Image_id` ASC) VISIBLE,
  INDEX `specialisation_idx` (`specialisation` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_Image1`
    FOREIGN KEY (`Image_id`)
    REFERENCES `mydb`.`Image` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `specialisation`
    FOREIGN KEY (`specialisation`)
    REFERENCES `mydb`.`Cook_has_National_Cuisine` (`National_Cuisine_cuisine`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Episodes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Episodes` (
  `episode_id` INT NOT NULL,
  `year` YEAR(4) NOT NULL,
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
  `tip_id` INT NOT NULL,
  `tip_discription` TEXT NOT NULL,
  `Recipe_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`tip_id`, `Recipe_name`),
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
-- Table `mydb`.`Recipe_has_Meals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe_has_Meals` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `Meals_type` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Recipe_name`, `Meals_type`),
  INDEX `fk_Recipe_has_Meals1_Meals1_idx` (`Meals_type` ASC) VISIBLE,
  INDEX `fk_Recipe_has_Meals1_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_has_Meals1_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_has_Meals1_Meals1`
    FOREIGN KEY (`Meals_type`)
    REFERENCES `mydb`.`Meals` (`type`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recipe_has_Labels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recipe_has_Labels` (
  `Recipe_name` VARCHAR(100) NOT NULL,
  `Labels_label` INT NOT NULL,
  PRIMARY KEY (`Recipe_name`, `Labels_label`),
  INDEX `fk_Recipe_has_Labels1_Labels1_idx` (`Labels_label` ASC) VISIBLE,
  INDEX `fk_Recipe_has_Labels1_Recipe2_idx` (`Recipe_name` ASC) VISIBLE,
  CONSTRAINT `fk_Recipe_has_Labels1_Recipe2`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Recipe_has_Labels1_Labels1`
    FOREIGN KEY (`Labels_label`)
    REFERENCES `mydb`.`Labels` (`label`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


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
  `ing_quantity` INT NOT NULL,
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


-- -----------------------------------------------------
-- Table `mydb`.`Cook_has_Recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cook_has_Recipe` (
  `Cook_cook_id` INT NOT NULL,
  `Recipe_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Cook_cook_id`, `Recipe_name`),
  INDEX `fk_Cook_has_Recipe_Recipe1_idx` (`Recipe_name` ASC) VISIBLE,
  INDEX `fk_Cook_has_Recipe_Cook1_idx` (`Cook_cook_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cook_has_Recipe_Cook1`
    FOREIGN KEY (`Cook_cook_id`)
    REFERENCES `mydb`.`Cook` (`cook_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cook_has_Recipe_Recipe1`
    FOREIGN KEY (`Recipe_name`)
    REFERENCES `mydb`.`Recipe` (`name`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
