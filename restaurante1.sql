-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2024 a las 19:04:50
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
-- Base de datos: `restaurante1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `calorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nombre`, `calorias`) VALUES
(1, 'Pollo', 200),
(2, 'Huevos', 70),
(3, 'Merluza', 150),
(4, 'Aceite de oliva', 120),
(5, 'Tofu', 80),
(6, 'Leche', 50),
(7, 'Harina de trigo', 340),
(8, 'Mantequilla', 700),
(9, 'Carne de res', 250),
(10, 'Queso', 400),
(11, 'Tomate', 20),
(12, 'Lechuga', 10),
(13, 'Pasta', 350),
(14, 'Arroz', 360),
(15, 'Ajo', 40),
(16, 'Cebolla', 50),
(17, 'Pimienta', 5),
(18, 'Carne de res', 250),
(19, 'Queso', 400),
(20, 'Tomate', 20),
(21, 'Lechuga', 10),
(22, 'Pasta', 350),
(23, 'Arroz', 360),
(24, 'Ajo', 40),
(25, 'Cebolla', 50),
(26, 'Pimienta', 5),
(27, 'Carne de cerdo', 250),
(28, 'Huevos', 70),
(29, 'Harina de maíz', 340),
(30, 'Azúcar', 400),
(31, 'Carne de cerdo', 250),
(32, 'Huevos', 70),
(33, 'Harina de maíz', 340),
(34, 'Azúcar', 400),
(35, 'Carne de cerdo', 250),
(36, 'Huevos', 70),
(37, 'Harina de maíz', 340),
(38, 'Azúcar', 400),
(39, 'Carne de cerdo', 250),
(40, 'Huevos', 70),
(41, 'Harina de maíz', 340),
(42, 'Azúcar', 400),
(43, 'Carne de cerdo', 250),
(44, 'Harina de maíz', 340),
(45, 'Azúcar', 400),
(46, 'Carne de cerdo', 250),
(47, 'Harina de maíz', 340),
(48, 'Azúcar', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `primer_plato_id` int(11) DEFAULT NULL,
  `segundo_plato_id` int(11) DEFAULT NULL,
  `postre_id` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `comentario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `primer_plato_id`, `segundo_plato_id`, `postre_id`, `precio`, `tipo`, `comentario`) VALUES
(1, 1, 2, 4, 30.00, 'Verano', 'Menú ligero de verano'),
(2, 2, 3, 5, 25.00, 'Festivo', 'Menú festivo con platos variados'),
(3, 4, 5, 6, 20.00, 'Veggie', 'Menú vegetariano'),
(4, 8, 9, 14, 35.00, 'Verano', 'Menú fresco para el verano'),
(5, 10, 11, 15, 40.00, 'Festivo', 'Menú especial para celebraciones'),
(6, 13, 14, 6, 28.00, 'Celiaca', 'Menú sin gluten para celiacos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paso`
--

CREATE TABLE `paso` (
  `id` int(11) NOT NULL,
  `receta_id` int(11) DEFAULT NULL,
  `numero_paso` int(11) NOT NULL,
  `operacion` varchar(255) NOT NULL,
  `tiempo_ejecucion` int(11) NOT NULL,
  `comentario_descriptivo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paso`
--

INSERT INTO `paso` (`id`, `receta_id`, `numero_paso`, `operacion`, `tiempo_ejecucion`, `comentario_descriptivo`) VALUES
(1, 1, 1, 'Marinar el pollo', 10, 'Marinar el pollo con especias y aceite'),
(2, 1, 2, 'Cocinar el pollo a la plancha', 20, 'Cocinar hasta dorar bien ambos lados'),
(3, 2, 1, 'Batir los huevos', 5, 'Batir bien hasta conseguir una mezcla homogénea'),
(4, 2, 2, 'Cocinar la tortilla en la sartén', 15, 'Cocinar a fuego medio hasta cuajar'),
(5, 3, 1, 'Preparar la merluza', 10, 'Limpieza y corte de la merluza'),
(6, 3, 2, 'Hornear la merluza', 35, 'Hornear a 180 grados hasta estar bien cocida'),
(7, 4, 1, 'Preparar la mezcla', 30, 'Mezclar tofu con otros ingredientes'),
(8, 4, 2, 'Hornear el budín', 30, 'Hornear en moldes de budín'),
(9, 5, 1, 'Preparar los ingredientes', 5, 'Lavar y cortar verduras'),
(10, 5, 2, 'Mezclar todos los ingredientes', 10, 'Mezclar y servir'),
(11, 6, 1, 'Preparar aceitunas', 2, 'Lavar y aliñar'),
(12, 6, 2, 'Servir aceitunas', 3, 'Servir en platos'),
(13, 7, 1, 'Preparar masa', 20, 'Mezclar ingredientes sin gluten'),
(14, 7, 2, 'Hornear tarta', 20, 'Hornear hasta dorar'),
(15, 8, 1, 'Cortar tomates y mozzarella', 5, 'Cortar en rodajas finas'),
(16, 8, 2, 'Montar la ensalada', 5, 'Alternar rodajas de tomate y mozzarella, añadir albahaca y aliñar'),
(17, 9, 1, 'Cocinar el arroz', 20, 'Cocinar el arroz hasta estar en su punto'),
(18, 9, 2, 'Saltear el pollo', 20, 'Cocinar el pollo con especias y mezclas con el arroz'),
(19, 10, 1, 'Preparar la carne', 10, 'Saltear carne picada con ajo y cebolla'),
(20, 10, 2, 'Cocinar la salsa', 40, 'Añadir tomate y especias y dejar reducir'),
(21, 11, 1, 'Preparar la masa', 15, 'Amasar la masa para pizza'),
(22, 11, 2, 'Cocinar la pizza', 15, 'Añadir salsa de tomate, queso y hornear'),
(23, 12, 1, 'Preparar los tomates', 10, 'Pelar y cortar los tomates'),
(24, 12, 2, 'Cocinar la sopa', 15, 'Cocinar los tomates con especias y licuar'),
(25, 13, 1, 'Mezclar ingredientes secos', 10, 'Harina de trigo, azúcar y levadura'),
(26, 13, 2, 'Hornear las galletas', 25, 'Hornear hasta dorar'),
(27, 14, 1, 'Preparar la base', 15, 'Mezclar galletas trituradas y mantequilla'),
(28, 14, 2, 'Cocinar la tarta', 30, 'Hornear la mezcla de queso y huevos sobre la base'),
(29, 15, 1, 'Mezclar las frutas', 5, 'Licuar las frutas con yogur y hielo'),
(30, 15, 2, 'Servir el smoothie', 5, 'Servir en vasos altos'),
(31, 8, 1, 'Cortar tomates y mozzarella', 5, 'Cortar en rodajas finas'),
(32, 8, 2, 'Montar la ensalada', 5, 'Alternar rodajas de tomate y mozzarella, añadir albahaca y aliñar'),
(33, 9, 1, 'Cocinar el arroz', 20, 'Cocinar el arroz hasta estar en su punto'),
(34, 9, 2, 'Saltear el pollo', 20, 'Cocinar el pollo con especias y mezclas con el arroz'),
(35, 10, 1, 'Preparar la carne', 10, 'Saltear carne picada con ajo y cebolla'),
(36, 10, 2, 'Cocinar la salsa', 40, 'Añadir tomate y especias y dejar reducir'),
(37, 11, 1, 'Preparar la masa', 15, 'Amasar la masa para pizza'),
(38, 11, 2, 'Cocinar la pizza', 15, 'Añadir salsa de tomate, queso y hornear'),
(39, 12, 1, 'Preparar los tomates', 10, 'Pelar y cortar los tomates'),
(40, 12, 2, 'Cocinar la sopa', 15, 'Cocinar los tomates con especias y licuar'),
(41, 13, 1, 'Mezclar ingredientes secos', 10, 'Harina de trigo, azúcar y levadura'),
(42, 13, 2, 'Hornear las galletas', 25, 'Hornear hasta dorar'),
(43, 14, 1, 'Preparar la base', 15, 'Mezclar galletas trituradas y mantequilla'),
(44, 14, 2, 'Cocinar la tarta', 30, 'Hornear la mezcla de queso y huevos sobre la base'),
(45, 15, 1, 'Mezclar las frutas', 5, 'Licuar las frutas con yogur y hielo'),
(46, 15, 2, 'Servir el smoothie', 5, 'Servir en vasos altos'),
(47, 1, 1, 'Preparar la carne', 30, 'Saltear la carne con especias'),
(48, 1, 2, 'Batir los huevos', 10, 'Batir bien los huevos hasta obtener una mezcla homogénea'),
(49, 1, 3, 'Hornear el pastel', 50, 'Mezclar carne y huevos, verter en un molde y hornear'),
(50, 1, 1, 'Preparar la carne', 30, 'Saltear la carne con especias'),
(51, 1, 2, 'Batir los huevos', 10, 'Batir bien los huevos hasta obtener una mezcla homogénea'),
(52, 1, 3, 'Hornear el pastel', 50, 'Mezclar carne y huevos, verter en un molde y hornear'),
(53, 1, 1, 'Preparar la carne', 30, 'Saltear la carne con especias'),
(54, 1, 2, 'Batir los huevos', 10, 'Batir bien los huevos hasta obtener una mezcla homogénea'),
(55, 1, 3, 'Hornear el pastel', 50, 'Mezclar carne y huevos, verter en un molde y hornear');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paso_ingrediente`
--

CREATE TABLE `paso_ingrediente` (
  `paso_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `unidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paso_ingrediente`
--

INSERT INTO `paso_ingrediente` (`paso_id`, `ingrediente_id`, `cantidad`, `unidad`) VALUES
(1, 1, 200.00, 'gramos'),
(2, 1, 200.00, 'gramos'),
(3, 2, 3.00, 'unidades'),
(4, 2, 3.00, 'unidades'),
(5, 3, 1.00, 'unidad'),
(6, 3, 1.00, 'unidad'),
(7, 4, 50.00, 'ml'),
(8, 5, 200.00, 'gramos'),
(10, 5, 200.00, 'gramos'),
(11, 4, 20.00, 'ml'),
(13, 4, 30.00, 'ml'),
(16, 3, 2.00, 'unidades'),
(16, 6, 200.00, 'gramos'),
(17, 1, 200.00, 'gramos'),
(18, 1, 200.00, 'gramos'),
(19, 7, 2.00, 'dientes'),
(19, 8, 1.00, 'unidad'),
(19, 10, 200.00, 'gramos'),
(20, 3, 500.00, 'ml'),
(21, 9, 200.00, 'gramos'),
(22, 3, 300.00, 'ml'),
(23, 3, 500.00, 'ml'),
(24, 4, 50.00, 'ml'),
(25, 9, 300.00, 'gramos'),
(26, 7, 200.00, 'gramos'),
(27, 9, 300.00, 'gramos'),
(28, 4, 100.00, 'ml'),
(29, 11, 500.00, 'gramos'),
(30, 5, 500.00, 'ml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paso_utensilio`
--

CREATE TABLE `paso_utensilio` (
  `paso_id` int(11) NOT NULL,
  `utensilio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paso_utensilio`
--

INSERT INTO `paso_utensilio` (`paso_id`, `utensilio_id`) VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(3, 5),
(4, 2),
(5, 3),
(6, 3),
(8, 5),
(9, 2),
(12, 2),
(14, 3),
(16, 2),
(16, 3),
(17, 11),
(18, 2),
(19, 2),
(19, 3),
(20, 3),
(21, 1),
(22, 3),
(23, 1),
(24, 3),
(25, 3),
(26, 1),
(27, 3),
(28, 3),
(29, 1),
(30, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `id` int(11) NOT NULL,
  `nombre_plato` varchar(255) NOT NULL,
  `tipo_plato` varchar(255) NOT NULL,
  `ingrediente_principal` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `tiempo_total` int(11) NOT NULL,
  `comentario_personal` text DEFAULT NULL,
  `ubicacion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`id`, `nombre_plato`, `tipo_plato`, `ingrediente_principal`, `precio`, `tiempo_total`, `comentario_personal`, `ubicacion_id`) VALUES
(1, 'Pollo a la Plancha', 'Carne', 'Pollo', 10.50, 30, 'Receta simple y saludable', 1),
(2, 'Tortilla de Huevos', 'Huevos', 'Huevos', 5.00, 20, 'Clásico de la cocina española', 2),
(3, 'Merluza al Horno', 'Pescado', 'Merluza', 15.75, 45, 'Perfecto para una cena ligera', 3),
(4, 'Budín de Tofu', 'Veggie', 'Tofu', 8.00, 60, 'Postre saludable', 4),
(5, 'Ensalada Veggie', 'Veggie', 'Tofu', 7.50, 15, 'Ideal para verano', 4),
(6, 'Aceitunas a la Española', 'Veggie', 'Aceite de oliva', 4.00, 5, 'Aperitivo clásico', 4),
(7, 'Tarta de Aceitunas', 'Celiaca', 'Aceite de oliva', 12.00, 40, 'Sin gluten', 2),
(8, 'Ensalada Caprese', 'Veggie', 'Tomate', 7.00, 10, 'Receta fresca y rápida', 1),
(9, 'Arroz con Pollo', 'Carne', 'Pollo', 12.00, 40, 'Plato tradicional', 2),
(10, 'Bolognesa de Carne', 'Carne', 'Carne de res', 14.00, 50, 'Clásico de la cocina italiana', 3),
(11, 'Pizza Margarita', 'Veggie', 'Tomate', 9.00, 30, 'Favorita de todos', 4),
(12, 'Sopa de Tomate', 'Veggie', 'Tomate', 6.00, 25, 'Ideal para días fríos', 1),
(13, 'Galletas sin gluten', 'Celiaca', 'Harina de trigo', 8.00, 35, 'Deliciosas y sin gluten', 2),
(14, 'Tarta de Queso', 'Postre', 'Queso', 15.00, 45, 'Postre cremoso', 3),
(15, 'Smoothie de Frutas', 'Veggie', 'Frutas', 5.00, 10, 'Bebida saludable', 4),
(16, 'Ensalada Caprese', 'Veggie', 'Tomate', 7.00, 10, 'Receta fresca y rápida', 1),
(17, 'Arroz con Pollo', 'Carne', 'Pollo', 12.00, 40, 'Plato tradicional', 2),
(18, 'Bolognesa de Carne', 'Carne', 'Carne de res', 14.00, 50, 'Clásico de la cocina italiana', 3),
(19, 'Pizza Margarita', 'Veggie', 'Tomate', 9.00, 30, 'Favorita de todos', 4),
(20, 'Sopa de Tomate', 'Veggie', 'Tomate', 6.00, 25, 'Ideal para días fríos', 1),
(21, 'Galletas sin gluten', 'Celiaca', 'Harina de trigo', 8.00, 35, 'Deliciosas y sin gluten', 2),
(22, 'Tarta de Queso', 'Postre', 'Queso', 15.00, 45, 'Postre cremoso', 3),
(23, 'Smoothie de Frutas', 'Veggie', 'Frutas', 5.00, 10, 'Bebida saludable', 4),
(24, 'Pastel de Carne y Huevo', 'Carne', 'Carne de cerdo', 20.00, 90, 'Receta deliciosa y nutritiva', 1),
(25, 'Pastel de Carne y Huevo', 'Carne', 'Carne de cerdo', 20.00, 90, 'Receta deliciosa y nutritiva', 1),
(26, 'Pastel de Carne y Huevo', 'Carne', 'Carne de cerdo', 20.00, 90, 'Receta deliciosa y nutritiva', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `descripcion`) VALUES
(1, 'Estantería A'),
(2, 'Biblioteca B'),
(3, 'Cocina Principal'),
(4, 'TV Show');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utensilio`
--

CREATE TABLE `utensilio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `utensilio`
--

INSERT INTO `utensilio` (`id`, `nombre`) VALUES
(1, 'Batidora'),
(2, 'Sartén'),
(3, 'Horno'),
(4, 'Plancha'),
(5, 'Moldes de Budín'),
(6, 'Olla'),
(7, 'Cuchillo'),
(8, 'Tabla de cortar'),
(9, 'Olla'),
(10, 'Cuchillo'),
(11, 'Tabla de cortar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `primer_plato_id` (`primer_plato_id`),
  ADD KEY `segundo_plato_id` (`segundo_plato_id`),
  ADD KEY `postre_id` (`postre_id`);

--
-- Indices de la tabla `paso`
--
ALTER TABLE `paso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receta_id` (`receta_id`);

--
-- Indices de la tabla `paso_ingrediente`
--
ALTER TABLE `paso_ingrediente`
  ADD PRIMARY KEY (`paso_id`,`ingrediente_id`),
  ADD KEY `ingrediente_id` (`ingrediente_id`);

--
-- Indices de la tabla `paso_utensilio`
--
ALTER TABLE `paso_utensilio`
  ADD PRIMARY KEY (`paso_id`,`utensilio_id`),
  ADD KEY `utensilio_id` (`utensilio_id`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ubicacion_id` (`ubicacion_id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `utensilio`
--
ALTER TABLE `utensilio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paso`
--
ALTER TABLE `paso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `utensilio`
--
ALTER TABLE `utensilio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`primer_plato_id`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`segundo_plato_id`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `menu_ibfk_3` FOREIGN KEY (`postre_id`) REFERENCES `receta` (`id`);

--
-- Filtros para la tabla `paso`
--
ALTER TABLE `paso`
  ADD CONSTRAINT `paso_ibfk_1` FOREIGN KEY (`receta_id`) REFERENCES `receta` (`id`);

--
-- Filtros para la tabla `paso_ingrediente`
--
ALTER TABLE `paso_ingrediente`
  ADD CONSTRAINT `paso_ingrediente_ibfk_1` FOREIGN KEY (`paso_id`) REFERENCES `paso` (`id`),
  ADD CONSTRAINT `paso_ingrediente_ibfk_2` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingrediente` (`id`);

--
-- Filtros para la tabla `paso_utensilio`
--
ALTER TABLE `paso_utensilio`
  ADD CONSTRAINT `paso_utensilio_ibfk_1` FOREIGN KEY (`paso_id`) REFERENCES `paso` (`id`),
  ADD CONSTRAINT `paso_utensilio_ibfk_2` FOREIGN KEY (`utensilio_id`) REFERENCES `utensilio` (`id`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`ubicacion_id`) REFERENCES `ubicacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
