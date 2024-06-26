-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2024 a las 19:16:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclistas`
--

CREATE TABLE `ciclistas` (
  `ciclista_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_fin_contrato` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciclistas`
--

INSERT INTO `ciclistas` (`ciclista_id`, `nombre`, `nacionalidad`, `fecha_nacimiento`, `equipo_id`, `fecha_inicio_contrato`, `fecha_fin_contrato`) VALUES
(1, 'Chris Froome', 'Reino Unido', '1985-05-20', 1, '2010-01-01', '2021-12-31'),
(2, 'Nairo Quintana', 'Colombia', '1990-02-04', 2, '2012-01-01', '2020-12-31'),
(3, 'Miguel Ángel López', 'Colombia', '1994-02-04', 3, '2015-01-01', '2023-12-31'),
(4, 'Egan Bernal', 'Colombia', '1997-01-13', 4, '2018-01-01', '2023-12-31'),
(5, 'Primož Roglič', 'Eslovenia', '1989-10-29', 5, '2016-01-01', '2024-12-31'),
(6, 'Peter Sagan', 'Eslovaquia', '1990-01-26', 6, '2017-01-01', '2022-12-31'),
(7, 'Julian Alaphilippe', 'Francia', '1992-06-11', 7, '2014-01-01', '2023-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `director` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `nombre`, `nacionalidad`, `director`) VALUES
(1, 'Team Sky', 'Reino Unido', 'Dave Brailsford'),
(2, 'Movistar Team', 'España', 'Eusebio Unzué'),
(3, 'Astana Pro Team', 'Kazajistán', 'Alexander Vinokourov'),
(4, 'Team Ineos', 'Reino Unido', 'Rod Ellingworth'),
(5, 'Jumbo-Visma', 'Países Bajos', 'Richard Plugge'),
(6, 'Bora-Hansgrohe', 'Alemania', 'Ralph Denk'),
(7, 'Deceuninck-QuickStep', 'Bélgica', 'Patrick Lefevere');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participaciones`
--

CREATE TABLE `participaciones` (
  `participacion_id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `prueba_id` int(11) NOT NULL,
  `puesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participaciones`
--

INSERT INTO `participaciones` (`participacion_id`, `equipo_id`, `prueba_id`, `puesto`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 1, 2, 3),
(5, 2, 1, 5),
(6, 3, 2, 4),
(7, 4, 1, 1),
(8, 5, 2, 1),
(9, 6, 3, 1),
(10, 7, 4, 2),
(11, 4, 5, 3),
(12, 5, 6, 2),
(13, 6, 4, 4),
(14, 7, 5, 1),
(15, 4, 6, 2),
(16, 1, 3, 5),
(17, 2, 4, 6),
(18, 3, 5, 7),
(19, 4, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE `pruebas` (
  `prueba_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `año` int(11) NOT NULL,
  `numero_etapas` int(11) NOT NULL,
  `kilometros_totales` int(11) NOT NULL,
  `ciclista_ganador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pruebas`
--

INSERT INTO `pruebas` (`prueba_id`, `nombre`, `año`, `numero_etapas`, `kilometros_totales`, `ciclista_ganador_id`) VALUES
(1, 'Tour de France', 2020, 21, 3470, 1),
(2, 'Giro d\'Italia', 2020, 21, 3498, 2),
(3, 'Vuelta a España', 2020, 18, 2892, 3),
(4, 'Tour de France', 2021, 21, 3414, 6),
(5, 'Giro d\'Italia', 2021, 21, 3450, 5),
(6, 'Vuelta a España', 2021, 21, 3336, 4),
(7, 'Tour de France', 2022, 21, 3328, 5),
(8, 'Giro d\'Italia', 2022, 21, 3410, 4),
(9, 'Vuelta a España', 2022, 21, 3280, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciclistas`
--
ALTER TABLE `ciclistas`
  ADD PRIMARY KEY (`ciclista_id`),
  ADD KEY `equipo_id` (`equipo_id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`);

--
-- Indices de la tabla `participaciones`
--
ALTER TABLE `participaciones`
  ADD PRIMARY KEY (`participacion_id`),
  ADD KEY `equipo_id` (`equipo_id`),
  ADD KEY `prueba_id` (`prueba_id`);

--
-- Indices de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`prueba_id`),
  ADD KEY `ciclista_ganador_id` (`ciclista_ganador_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciclistas`
--
ALTER TABLE `ciclistas`
  MODIFY `ciclista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `equipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `participaciones`
--
ALTER TABLE `participaciones`
  MODIFY `participacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `pruebas`
--
ALTER TABLE `pruebas`
  MODIFY `prueba_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciclistas`
--
ALTER TABLE `ciclistas`
  ADD CONSTRAINT `ciclistas_ibfk_1` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`);

--
-- Filtros para la tabla `participaciones`
--
ALTER TABLE `participaciones`
  ADD CONSTRAINT `participaciones_ibfk_1` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `participaciones_ibfk_2` FOREIGN KEY (`prueba_id`) REFERENCES `pruebas` (`prueba_id`);

--
-- Filtros para la tabla `pruebas`
--
ALTER TABLE `pruebas`
  ADD CONSTRAINT `pruebas_ibfk_1` FOREIGN KEY (`ciclista_ganador_id`) REFERENCES `ciclistas` (`ciclista_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
