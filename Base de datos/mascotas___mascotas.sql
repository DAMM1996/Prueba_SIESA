-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-12-2021 a las 04:13:06
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotas & mascotas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `PropietariosSinMascotas` ()  SELECT propietario.Nombre, mascotas.Id FROM `propietario`
LEFT JOIN mascotas ON mascotas.Id_propietario=propietario.Id
WHERE mascotas.Id is null$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Id_tipoMascota` int(11) NOT NULL,
  `Id_propietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`Id`, `Nombre`, `Id_tipoMascota`, `Id_propietario`) VALUES
(1, 'LOLO', 1, 1),
(2, 'DANTE', 2, 2),
(3, 'MININO', 3, 3),
(4, 'LORENZO', 4, 4),
(5, 'PACO', 5, 5),
(6, 'PEPE', 6, NULL),
(7, 'NEMO', 7, NULL),
(8, 'PACHO', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`Id`, `Nombre`) VALUES
(1, 'July'),
(2, 'Felipe'),
(3, 'Juan David'),
(4, 'Teresa'),
(5, 'Albeiro'),
(6, 'Diego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_clinicosmascotas`
--

CREATE TABLE `servicios_clinicosmascotas` (
  `Id` int(11) NOT NULL,
  `Fecha` varchar(20) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL,
  `Id_propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios_clinicosmascotas`
--

INSERT INTO `servicios_clinicosmascotas` (`Id`, `Fecha`, `Valor`, `Descripcion`, `Id_propietario`) VALUES
(1, '22/12/2021', 50000, 'Esterilizacion', 1),
(2, '22/12/2021', 30000, 'Extracion Colmillo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mascota`
--

CREATE TABLE `tipo_mascota` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_mascota`
--

INSERT INTO `tipo_mascota` (`Id`, `Descripcion`) VALUES
(1, 'Mini pig'),
(2, 'Perro'),
(3, 'Gato'),
(4, 'Loro'),
(5, 'Perico'),
(6, 'Conejo'),
(7, 'Pez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_tipoMascota` (`Id_tipoMascota`),
  ADD KEY `Id_propietario` (`Id_propietario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `servicios_clinicosmascotas`
--
ALTER TABLE `servicios_clinicosmascotas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_propietario` (`Id_propietario`);

--
-- Indices de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `servicios_clinicosmascotas`
--
ALTER TABLE `servicios_clinicosmascotas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_mascota`
--
ALTER TABLE `tipo_mascota`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`Id_tipoMascota`) REFERENCES `tipo_mascota` (`Id`),
  ADD CONSTRAINT `mascotas_ibfk_2` FOREIGN KEY (`Id_propietario`) REFERENCES `propietario` (`Id`);

--
-- Filtros para la tabla `servicios_clinicosmascotas`
--
ALTER TABLE `servicios_clinicosmascotas`
  ADD CONSTRAINT `servicios_clinicosmascotas_ibfk_1` FOREIGN KEY (`Id_propietario`) REFERENCES `propietario` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
