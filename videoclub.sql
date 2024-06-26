-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2024 a las 19:23:54
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
-- Base de datos: `videoclub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `alquiler_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `fecha_alquiler` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`alquiler_id`, `cliente_id`, `pelicula_id`, `fecha_alquiler`, `fecha_devolucion`) VALUES
(1, 1, 1, '2024-06-01', '2024-06-05'),
(2, 1, 2, '2024-06-01', '2024-06-05'),
(3, 2, 3, '2024-06-02', '2024-06-06'),
(4, 3, 4, '2024-06-03', '2024-06-07'),
(5, 4, 1, '2024-06-04', '2024-06-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `nombre`, `apellido`, `email`, `telefono`, `direccion`) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@example.com', '123456789', 'Calle Falsa 123, Ciudad'),
(2, 'María', 'García', 'maria.garcia@example.com', '987654321', 'Avenida Siempre Viva 456, Ciudad'),
(3, 'Carlos', 'Ramírez', 'carlos.ramirez@example.com', '555666777', 'Plaza Mayor 789, Ciudad'),
(4, 'Ana', 'López', 'ana.lopez@example.com', '444555666', 'Calle del Sol 101, Ciudad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `géneros`
--

CREATE TABLE `géneros` (
  `genero_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `géneros`
--

INSERT INTO `géneros` (`genero_id`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Comedia'),
(3, 'Drama'),
(4, 'Ciencia Ficción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `películas`
--

CREATE TABLE `películas` (
  `pelicula_id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `año` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `genero_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `películas`
--

INSERT INTO `películas` (`pelicula_id`, `titulo`, `director`, `año`, `duracion`, `genero_id`) VALUES
(1, 'Die Hard', 'John McTiernan', 1988, '02:12:00', 1),
(2, 'The Mask', 'Chuck Russell', 1994, '01:41:00', 2),
(3, 'The Godfather', 'Francis Ford Coppola', 1972, '02:55:00', 3),
(4, 'Blade Runner', 'Ridley Scott', 1982, '01:57:00', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`alquiler_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `pelicula_id` (`pelicula_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `géneros`
--
ALTER TABLE `géneros`
  ADD PRIMARY KEY (`genero_id`);

--
-- Indices de la tabla `películas`
--
ALTER TABLE `películas`
  ADD PRIMARY KEY (`pelicula_id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `alquiler_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `géneros`
--
ALTER TABLE `géneros`
  MODIFY `genero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `películas`
--
ALTER TABLE `películas`
  MODIFY `pelicula_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD CONSTRAINT `alquileres_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `alquileres_ibfk_2` FOREIGN KEY (`pelicula_id`) REFERENCES `películas` (`pelicula_id`);

--
-- Filtros para la tabla `películas`
--
ALTER TABLE `películas`
  ADD CONSTRAINT `películas_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `géneros` (`genero_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
