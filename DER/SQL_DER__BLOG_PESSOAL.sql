-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blog_pessoal
-- -----------------------------------------------------
-- 
-- 

-- -----------------------------------------------------
-- Schema db_blog_pessoal
--
-- 
-- 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blog_pessoal` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `db_blog_pessoal` ;

-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_usuarios` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `e-mail` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_temas` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_postagem` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `texto` VARCHAR(500) NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `tb_temas_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`, `tb_temas_id`),
  INDEX `fk_tb_postagem_tb_temas1_idx` (`tb_temas_id` ASC) VISIBLE,
  CONSTRAINT `tb_usuarios`
    FOREIGN KEY ()
    REFERENCES `db_blog_pessoal`.`tb_usuarios` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagem_tb_temas1`
    FOREIGN KEY (`tb_temas_id`)
    REFERENCES `db_blog_pessoal`.`tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;