-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2024 a las 19:21:55
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
-- Base de datos: `discografica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`artista_id`, `nombre`, `nacionalidad`, `fecha_nacimiento`) VALUES
(1, 'The Beatles', 'Reino Unido', '1960-01-01'),
(2, 'Queen', 'Reino Unido', '1970-01-01'),
(3, 'Michael Jackson', 'Estados Unidos', '1958-08-29'),
(4, 'Madonna', 'Estados Unidos', '1958-08-16'),
(5, 'The Beatles', 'Reino Unido', '1960-01-01'),
(6, 'Queen', 'Reino Unido', '1970-01-01'),
(7, 'Michael Jackson', 'Estados Unidos', '1958-08-29'),
(8, 'Madonna', 'Estados Unidos', '1958-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `cancion_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `duracion` time NOT NULL,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`cancion_id`, `titulo`, `duracion`, `album_id`) VALUES
(1, 'Come Together', '00:04:19', 1),
(2, 'Something', '00:03:03', 1),
(3, 'Bohemian Rhapsody', '00:05:55', 2),
(4, 'Love of My Life', '00:03:39', 2),
(5, 'Thriller', '00:05:57', 3),
(6, 'Beat It', '00:04:18', 3),
(7, 'Like a Virgin', '00:03:38', 4),
(8, 'Material Girl', '00:04:00', 4),
(9, 'Come Together', '00:04:19', 1),
(10, 'Something', '00:03:03', 1),
(11, 'Bohemian Rhapsody', '00:05:55', 2),
(12, 'Love of My Life', '00:03:39', 2),
(13, 'Thriller', '00:05:57', 3),
(14, 'Beat It', '00:04:18', 3),
(15, 'Like a Virgin', '00:03:38', 4),
(16, 'Material Girl', '00:04:00', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producciones`
--

CREATE TABLE `producciones` (
  `produccion_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) DEFAULT NULL,
  `cancion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producciones`
--

INSERT INTO `producciones` (`produccion_id`, `nombre`, `artista_id`, `cancion_id`) VALUES
(1, 'Producción Abbey Road', 1, 1),
(2, 'Producción Abbey Road', 1, 2),
(3, 'Producción A Night at the Opera', 2, 3),
(4, 'Producción A Night at the Opera', 2, 4),
(5, 'Producción Thriller', 3, 5),
(6, 'Producción Thriller', 3, 6),
(7, 'Producción Like a Virgin', 4, 7),
(8, 'Producción Like a Virgin', 4, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `álbumes`
--

CREATE TABLE `álbumes` (
  `album_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `artista_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `álbumes`
--

INSERT INTO `álbumes` (`album_id`, `titulo`, `fecha_lanzamiento`, `artista_id`) VALUES
(1, 'Abbey Road', '1969-09-26', 1),
(2, 'A Night at the Opera', '1975-11-21', 2),
(3, 'Thriller', '1982-11-30', 3),
(4, 'Like a Virgin', '1984-11-12', 4),
(5, 'Abbey Road', '1969-09-26', 1),
(6, 'A Night at the Opera', '1975-11-21', 2),
(7, 'Thriller', '1982-11-30', 3),
(8, 'Like a Virgin', '1984-11-12', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`artista_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`cancion_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indices de la tabla `producciones`
--
ALTER TABLE `producciones`
  ADD PRIMARY KEY (`produccion_id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `álbumes`
--
ALTER TABLE `álbumes`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artista_id` (`artista_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `artista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `cancion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `producciones`
--
ALTER TABLE `producciones`
  MODIFY `produccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `álbumes`
--
ALTER TABLE `álbumes`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `álbumes` (`album_id`);

--
-- Filtros para la tabla `producciones`
--
ALTER TABLE `producciones`
  ADD CONSTRAINT `producciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`artista_id`),
  ADD CONSTRAINT `producciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`cancion_id`);

--
-- Filtros para la tabla `álbumes`
--
ALTER TABLE `álbumes`
  ADD CONSTRAINT `álbumes_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`artista_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
