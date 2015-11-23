-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-11-2015 a las 10:19:01
-- Versión del servidor: 5.1.30
-- Versión de PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `juego_trivia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpregunta` int(11) NOT NULL DEFAULT '0',
  `numpregunta` int(5) DEFAULT NULL,
  `pregunta` varchar(200) DEFAULT NULL,
  `opcion1` varchar(100) DEFAULT NULL,
  `opcion2` varchar(100) DEFAULT NULL,
  `opcion3` varchar(100) DEFAULT NULL,
  `opcion4` varchar(100) DEFAULT NULL,
  `correcta` int(5) DEFAULT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `numpregunta`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `correcta`) VALUES
(1, 1, 'Que clase de palabra es "según"?', ' Verbo', 'Preposición', 'Adjetivo', 'Sustantivo', 2),
(2, 2, 'Una persona que padece polidipsia siente una constante necesidad de:', 'Beber', 'Hablar', 'Dormir', 'Correr', 1),
(3, 3, 'Es el nombre de uno de los Tres Reyes Magos:', 'Barrabas', 'Jonas', 'Melchor', 'Judas', 3),
(4, 4, 'Que lee un quiromante para predecir el futuro?', 'El café', 'Los caracoles', 'Las líneas de la mano', 'El tabaco', 3),
(5, 5, 'La coroides es una membrana que se encuentra en:', 'El corazón', 'El ojo', 'El pulmón', 'El cerebro', 2),
(6, 6, 'Es el oso blanco que habita en el hielo artico', 'Tropical', 'Oriental', 'Polar', 'Montañes', 3),
(7, 7, 'La jibia es un:', 'Insecto', 'Reptil', 'Molusco', 'Pez', 3),
(8, 8, 'Miguel Indurain es un destacado:', 'Boxeador', 'Beisbolista', 'Futbolista', 'Ciclista', 4),
(9, 9, 'Cual es el significado del prefijo "epi-"?', 'Alrededor', 'Episodio', 'Sobre', 'Inferior', 3),
(10, 10, 'Cual de los siguientes países limita con Francia?', 'Croacia', 'Alemania', 'Portugal', 'Turquía', 2);
