-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2015 a las 14:20:07
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `remates`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `user`, `password`, `role`, `created`) VALUES
(1, 'jaimeirazabal1', '7d3ff5e583a1727c07bd911d427b514b', NULL, '2015-10-08 18:34:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;