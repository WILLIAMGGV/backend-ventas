-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_av
CREATE DATABASE IF NOT EXISTS `db_av` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_av`;

-- Volcando estructura para tabla db_av.av_agentes
CREATE TABLE IF NOT EXISTS `av_agentes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Email` text,
  `Nombres` text,
  `Apellidos` text,
  `Servicios` float DEFAULT NULL,
  `Tipo_Servicio` text,
  `Sede` text,
  `Modalidad` text,
  `Rubro` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_agentes: ~5 rows (aproximadamente)
INSERT INTO `av_agentes` (`ID`, `Email`, `Nombres`, `Apellidos`, `Servicios`, `Tipo_Servicio`, `Sede`, `Modalidad`, `Rubro`) VALUES
	(9, 'abdelplasencia@gmail.com', 'Abdel Plasencia', NULL, NULL, 'Full Time', 'Colombia', 'En Oficina', 'Seguros'),
	(10, 'ailinsuarez82@gmail.com', 'Ailin Suarez', NULL, NULL, 'Full Time', 'Colombia', 'En Oficina', 'Seguros'),
	(11, 'anacabrera9708@gmail.com', 'Ana Cabrera', NULL, NULL, 'Full Time', 'Venezuela', 'En Oficina', 'Seguros'),
	(12, 'jorge@lugoia.com', 'Ana Lugo', NULL, NULL, 'Full Time', 'Venezuela', 'En Oficina', 'Seguros'),
	(20, 'wulffandres@gmail.com', 'Andres Wulff', NULL, NULL, 'Full Time/Bilingue', 'Venezuela', 'En Oficina', 'Seguros');

-- Volcando estructura para tabla db_av.av_documentos
CREATE TABLE IF NOT EXISTS `av_documentos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDU` int DEFAULT '0',
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Archivo1` text,
  `Archivo2` text,
  `Archivo3` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_documentos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_horas_extra
CREATE TABLE IF NOT EXISTS `av_horas_extra` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDU` int DEFAULT '0',
  `Desde` time DEFAULT NULL,
  `Hasta` time DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Almuerzo` text,
  `Horas_Almuerzo` int DEFAULT NULL,
  `Fechas_Realizacion` json DEFAULT NULL,
  `Cantidad_Ejecutivos` int DEFAULT NULL,
  `Nombre_Ejecutivos` json DEFAULT NULL,
  `Descripcion` text,
  `Estatus` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_horas_extra: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_landing
CREATE TABLE IF NOT EXISTS `av_landing` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `apellido` text,
  `telefono` text,
  `email` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_landing: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_pqr
CREATE TABLE IF NOT EXISTS `av_pqr` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDU` int NOT NULL DEFAULT '0',
  `Fecha` date DEFAULT NULL,
  `Tipo` text,
  `Asunto` text,
  `Detalles` text,
  `Adjuntos` json DEFAULT NULL,
  `Respuesta_Por` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_pqr: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_registro_asistentes
CREATE TABLE IF NOT EXISTS `av_registro_asistentes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombres` text NOT NULL,
  `Apellidos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Conocimientos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Foto` text NOT NULL,
  `Sede` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_registro_asistentes: ~2 rows (aproximadamente)
INSERT INTO `av_registro_asistentes` (`ID`, `Nombres`, `Apellidos`, `Conocimientos`, `Foto`, `Sede`) VALUES
	(31, 'Maliallela Fabelo', NULL, 'Excel Avanzado', 'uploads/1733519963939-975550948-asistente.jpg', 'Venezuela'),
	(37, 'Pedro Cordova', NULL, 'Bilingüe', 'uploads/1733523716936-264154116-asistente2.jpg', 'Venezuela');

-- Volcando estructura para tabla db_av.av_servicio_adicional
CREATE TABLE IF NOT EXISTS `av_servicio_adicional` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDU` int DEFAULT '0',
  `Titulo` text,
  `Descripcion` text,
  `Estatus` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_servicio_adicional: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_solicitud_cambio
CREATE TABLE IF NOT EXISTS `av_solicitud_cambio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDU` int DEFAULT '0',
  `Titulo` text,
  `Descripcion` text,
  `Estatus` text,
  `IDA` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_solicitud_cambio: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_av.av_usuarios
CREATE TABLE IF NOT EXISTS `av_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Email` text,
  `Nombres` text,
  `Apellidos` text,
  `Telefono` text,
  `Estatus` text,
  `Password` text,
  `Foto` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_av.av_usuarios: ~5 rows (aproximadamente)
INSERT INTO `av_usuarios` (`ID`, `Email`, `Nombres`, `Apellidos`, `Telefono`, `Estatus`, `Password`, `Foto`) VALUES
	(16, 'anacabrera9708@gmail.com', 'Ana Cabrera', NULL, '5555555555', 'Agente', '$2a$08$/e53HKoebMGMN8vgEHUxr.IzJA9wsnnL6su6n4cwklShBLh2sZAMC', NULL),
	(17, 'williamggv@gmail.com', 'William Godoy', NULL, '888888', 'Normal', '$2a$08$lQ2XnG7LSVIIEK5Uut.xluM4twKSRdMEsmLnGOImTSG9FAn4R9qDi', NULL),
	(18, 'ailinsuarez82@gmail.com', 'Ailin Suarez', NULL, '88888', 'Agente', '$2a$08$qu0y9jviU8XLqBCCZ3j0MOmRHVCXcrBQ8Q0bSG9huCdZUEbfmsPdm', NULL),
	(19, 'william@gmail.com', 'William Godoy', NULL, '99999', 'Normal', '$2a$08$iMvD1EjaUlsQQgcm0ZPmWOcncQp6Ba1bKCGMf6uWAEVdwhWyVAhPu', NULL),
	(20, 'abdelplasencia@gmail.com', 'Abdel Plasencia null', NULL, '1211221232', 'Agente', '$2a$08$cScuHQjKc4nxnAJPf4dwAuwJ4ymg8WeMJSx6sz7V0gP7RaMoVlZBG', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
