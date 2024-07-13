-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-07-2024 a las 20:58:30
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
-- Base de datos: `proyectojava_24112`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `email`, `contrasena`) VALUES
(1, 'admin@prueba.com', 'admin'),
(2, 'luz@hotmail.com', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrousuarios`
--

CREATE TABLE `registrousuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrousuarios`
--

INSERT INTO `registrousuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `fechaNacimiento`, `pais`) VALUES
(1, 'Juan', 'Garcia', 'juan.perez@example.com', 'pass1', '1985-05-12', 'Argentina'),
(2, 'María', 'Gómez', 'maria.gomez@example.com', 'pass2', '1990-08-20', 'Bolivia'),
(4, 'Ana', 'Fernández', 'ana.fernandez@example.com', 'pass4', '1995-07-07', 'Chile'),
(5, 'Luis', 'Martínez', 'luis.martinez@example.com', 'pass5', '1978-03-30', 'Colombia'),
(6, 'Luz', 'Talavera Martinez', 'luztalaveramartinez@hotmail.com', '1234', '1987-08-06', 'Argentina'),
(7, 'Martin', 'Lopez', 'Martin@hotmail.com', '1234', '1987-02-12', 'Argentina'),
(9, 'Rene', 'ruiz', 'rene@hotmail.com', '1234', '1987-02-01', 'Argentina'),
(10, 'Enzo', 'Ensenada', 'enzo@prueba.com', '1234', '1987-01-02', 'Argentina'),
(11, 'Sofia', 'Torres', 'sofia@prueba.com', '1234', '1995-04-02', 'Ecuador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
