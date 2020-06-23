-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_gamestore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_gamestore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bd_gamestore` ;

-- -----------------------------------------------------
-- Table `bd_gamestore`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_gamestore`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `document` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bd_gamestore`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_gamestore`.`game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `stock` INT NOT NULL,
  `mainCharacter` VARCHAR(45) NOT NULL,
  `director` VARCHAR(45) NOT NULL,
  `productor` VARCHAR(45) NOT NULL,
  `platform` VARCHAR(45) NOT NULL,
  `desingner` VARCHAR(45) NOT NULL,
  `rentPrice` INT NOT NULL,
  `unitsAvailable` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bd_gamestore`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_gamestore`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `expirationDate` DATE NOT NULL,
  `total` INT NOT NULL,
  `idCustomer` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idCustomer_idx` (`idCustomer` ASC) VISIBLE,
  CONSTRAINT `idCustomer`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `bd_gamestore`.`customer` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bd_gamestore`.`ordergame`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_gamestore`.`ordergame` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idrent` INT NOT NULL,
  `idGame` INT NOT NULL,
  `nameGame` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idrent_idx` (`idrent` ASC) VISIBLE,
  INDEX `idGame_idx` (`idGame` ASC) VISIBLE,
  CONSTRAINT `idGame`
    FOREIGN KEY (`idGame`)
    REFERENCES `bd_gamestore`.`game` (`id`),
  CONSTRAINT `idrent`
    FOREIGN KEY (`idrent`)
    REFERENCES `bd_gamestore`.`order` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
