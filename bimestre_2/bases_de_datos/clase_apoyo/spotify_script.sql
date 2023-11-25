-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema spotify
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema spotify
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `spotify` DEFAULT CHARACTER SET utf8 ;
USE `spotify` ;

-- -----------------------------------------------------
-- Table `spotify`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`pais` (
  `idpais` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`suscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`suscripcion` (
  `idsuscripcion` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idsuscripcion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `fecha_modificacion` DATE NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `sexo` CHAR(10) NOT NULL,
  `codigo_postal` CHAR(10) NOT NULL,
  `pais_idpais` INT NOT NULL,
  `suscripcion_idsuscripcion` INT NOT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_pais1_idx` (`pais_idpais` ASC) VISIBLE,
  INDEX `fk_usuario_suscripcion1_idx` (`suscripcion_idsuscripcion` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_pais1`
    FOREIGN KEY (`pais_idpais`)
    REFERENCES `spotify`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_suscripcion1`
    FOREIGN KEY (`suscripcion_idsuscripcion`)
    REFERENCES `spotify`.`suscripcion` (`idsuscripcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`playlist` (
  `idplaylist` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `numero_canciones` INT NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `esta_activa` TINYINT NOT NULL,
  `fecha_eliminacion` DATE NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idplaylist`),
  INDEX `fk_playlist_usuario_idx` (`usuario_idusuario` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_usuario`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`discografia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`discografia` (
  `iddiscografia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `pais_idpais` INT NOT NULL,
  PRIMARY KEY (`iddiscografia`),
  INDEX `fk_discografia_pais1_idx` (`pais_idpais` ASC) VISIBLE,
  CONSTRAINT `fk_discografia_pais1`
    FOREIGN KEY (`pais_idpais`)
    REFERENCES `spotify`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`artista` (
  `idartista` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idartista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`album` (
  `idalbum` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `ano_publicacion` YEAR NOT NULL,
  `discografia` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(200) NOT NULL,
  `discografia_iddiscografia` INT NOT NULL,
  `artista_idartista` INT NOT NULL,
  PRIMARY KEY (`idalbum`),
  INDEX `fk_album_discografia1_idx` (`discografia_iddiscografia` ASC) VISIBLE,
  INDEX `fk_album_artista1_idx` (`artista_idartista` ASC) VISIBLE,
  CONSTRAINT `fk_album_discografia1`
    FOREIGN KEY (`discografia_iddiscografia`)
    REFERENCES `spotify`.`discografia` (`iddiscografia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_artista1`
    FOREIGN KEY (`artista_idartista`)
    REFERENCES `spotify`.`artista` (`idartista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`cancion` (
  `idcancion` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `duracion` TIME NOT NULL,
  `numero_reproduccion` INT NOT NULL,
  `cantidad_like` INT NOT NULL,
  `album_idalbum` INT NOT NULL,
  PRIMARY KEY (`idcancion`),
  INDEX `fk_cancion_album1_idx` (`album_idalbum` ASC) VISIBLE,
  CONSTRAINT `fk_cancion_album1`
    FOREIGN KEY (`album_idalbum`)
    REFERENCES `spotify`.`album` (`idalbum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`genero` (
  `idgenero` INT NOT NULL AUTO_INCREMENT,
  `detalle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idgenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`genero_cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`genero_cancion` (
  `id_cancion_genero` INT NOT NULL AUTO_INCREMENT,
  `genero_idgenero` INT NOT NULL,
  `cancion_idcancion` INT NOT NULL,
  INDEX `fk_genero_has_cancion_cancion1_idx` (`cancion_idcancion` ASC) VISIBLE,
  INDEX `fk_genero_has_cancion_genero1_idx` (`genero_idgenero` ASC) VISIBLE,
  PRIMARY KEY (`id_cancion_genero`),
  CONSTRAINT `fk_genero_has_cancion_genero1`
    FOREIGN KEY (`genero_idgenero`)
    REFERENCES `spotify`.`genero` (`idgenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_genero_has_cancion_cancion1`
    FOREIGN KEY (`cancion_idcancion`)
    REFERENCES `spotify`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`playlist_cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`playlist_cancion` (
  `id_playlist_cancion` INT NOT NULL AUTO_INCREMENT,
  `playlist_idplaylist` INT NOT NULL,
  `cancion_idcancion` INT NOT NULL,
  INDEX `fk_playlist_has_cancion_cancion1_idx` (`cancion_idcancion` ASC) VISIBLE,
  INDEX `fk_playlist_has_cancion_playlist1_idx` (`playlist_idplaylist` ASC) VISIBLE,
  PRIMARY KEY (`id_playlist_cancion`),
  CONSTRAINT `fk_playlist_has_cancion_playlist1`
    FOREIGN KEY (`playlist_idplaylist`)
    REFERENCES `spotify`.`playlist` (`idplaylist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_playlist_has_cancion_cancion1`
    FOREIGN KEY (`cancion_idcancion`)
    REFERENCES `spotify`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
