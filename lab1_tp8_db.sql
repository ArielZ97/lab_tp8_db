-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 05:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab1_tp8_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `contactoAlternativo` bigint(20) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idCliente`, `dni`, `nombre`, `apellido`, `telefono`, `direccion`, `contactoAlternativo`, `activo`) VALUES
(43, 12345678, 'Juan', 'Pérez', 1122334455, 'Calle 123', 9988776655, 1),
(44, 87654321, 'María', 'Gómez', 5544332211, 'Avenida Principal', 6677889900, 1),
(45, 56781234, 'Carlos', 'López', 7788990011, 'Calle Secundaria', 5544331122, 1),
(46, 43218765, 'Ana', 'Martínez', 3344556677, 'Calle 456', 1122334455, 1),
(47, 87651234, 'Pedro', 'Rodríguez', 8899001122, 'Calle Central', 7788990011, 1),
(48, 98765432, 'Laura', 'Sánchez', 6677889900, 'Avenida Grande', 2211998833, 1),
(49, 34567812, 'Santiago', 'Hernández', 1122334455, 'Calle Mayor', 5544332211, 1),
(50, 56784321, 'Elena', 'Díaz', 8899001122, 'Avenida Principal', 1122334455, 1),
(51, 87653421, 'Diego', 'Alvarez', 7788990011, 'Calle 789', 9988776655, 1),
(52, 12348765, 'Luisa', 'Romero', 6677889900, 'Calle 456', 3344556677, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mascotas`
--

CREATE TABLE `mascotas` (
  `idMascota` int(11) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `especie` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `colorPelo` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  `idCliente` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mascotas`
--

INSERT INTO `mascotas` (`idMascota`, `alias`, `sexo`, `especie`, `raza`, `colorPelo`, `fechaNac`, `idCliente`, `activo`) VALUES
(26, 'Max', 'Macho', 'Perro', 'Labrador Retriever', 'Dorado', '2019-05-10', 43, 1),
(27, 'Luna', 'Hembra', 'Gato', 'Persa', 'Blanco', '2018-07-15', 44, 1),
(28, 'Bobby', 'Macho', 'Perro', 'Bulldog Francés', 'Atigrado', '2020-02-20', 45, 1),
(29, 'Milo', 'Macho', 'Perro', 'Golden Retriever', 'Dorado', '2017-11-25', 46, 1),
(30, 'Coco', 'Macho', 'Perro', 'Chihuahua', 'Café', '2019-08-30', 47, 0),
(31, 'Misty', 'Hembra', 'Gato', 'Siamés', 'Gris', '2021-03-05', 48, 1),
(32, 'Rocky', 'Macho', 'Perro', 'Bulldog Inglés', 'Blanco y Marrón', '2016-09-12', 49, 1),
(33, 'Bella', 'Hembra', 'Gato', 'Maine Coon', 'Negro', '2020-04-18', 50, 0),
(34, 'Simba', 'Macho', 'Perro', 'Husky Siberiano', 'Gris y Blanco', '2018-01-08', 51, 1),
(35, 'Mia', 'Hembra', 'Gato', 'Bengalí', 'Naranja con Negro', '2019-10-22', 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tratamiento`
--

CREATE TABLE `tratamiento` (
  `idTratamiento` int(11) NOT NULL,
  `descripcion` varchar(70) NOT NULL,
  `medicamento` varchar(50) NOT NULL,
  `importe` double NOT NULL,
  `tipoTratamiento` varchar(30) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tratamiento`
--

INSERT INTO `tratamiento` (`idTratamiento`, `descripcion`, `medicamento`, `importe`, `tipoTratamiento`, `activo`) VALUES
(6, 'Vacunación anual', 'Vacuna antirrábica', 50, 'Preventivo', 1),
(7, 'Desparasitación mensual', 'Pastillas antiparasitarias', 20, 'Preventivo', 1),
(8, 'Tratamiento para alergias', 'Antihistamínicos', 35, 'Curativo', 1),
(9, 'Cirugía de esterilización', 'Cirugía de castración', 150, 'Curativo', 1),
(10, 'Revisión veterinaria anual', 'Chequeo general', 80, 'Preventivo', 1),
(11, 'Tratamiento para problemas digestivos', 'Medicamentos gastrointestinales', 45, 'Curativo', 1),
(12, 'Vacunación contra la leptospirosis', 'Vacuna contra la leptospirosis', 60, 'Preventivo', 1),
(13, 'Tratamiento para problemas de piel', 'Cremas dermatológicas', 40, 'Curativo', 1),
(14, 'Vacunación contra la gripe canina', 'Vacuna contra la gripe canina', 55, 'Preventivo', 1),
(15, 'Tratamiento para el control de pulgas y garrapatas', 'Productos antipulgas', 30, 'Preventivo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visita`
--

CREATE TABLE `visita` (
  `idVisita` int(11) NOT NULL,
  `idMascota` int(11) NOT NULL,
  `fechaVisita` date NOT NULL,
  `detalle` varchar(50) NOT NULL,
  `peso` double NOT NULL,
  `idTratamiento` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visita`
--

INSERT INTO `visita` (`idVisita`, `idMascota`, `fechaVisita`, `detalle`, `peso`, `idTratamiento`, `activo`) VALUES
(1, 26, '2023-06-25', 'Control de vacunación', 28.7, 6, 1),
(2, 31, '2024-04-23', 'Consulta por problemas respiratorios', 5.8, 9, 1),
(3, 27, '2023-06-25', 'Seguimiento de tratamiento', 4.8, 8, 1),
(4, 30, '2024-04-08', 'Control de crecimiento', 9.3, 11, 1),
(5, 28, '2023-06-25', 'Consulta por problemas de piel', 10, 13, 1),
(6, 35, '2024-04-03', 'Examen de rutina', 4.8, 7, 1),
(7, 33, '2024-04-14', 'Cirugía Programada', 6.3, 9, 1),
(8, 32, '2024-04-01', 'Control de vacunación', 12.5, 6, 1),
(9, 34, '2024-01-24', 'Control de plagas', 25.3, 15, 1),
(10, 29, '2023-06-25', 'Vacunación', 27.5, 14, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`idMascota`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indexes for table `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`idTratamiento`);

--
-- Indexes for table `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`idVisita`),
  ADD KEY `idMascota` (`idMascota`),
  ADD KEY `idTratamiento` (`idTratamiento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `idMascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `idTratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `visita`
--
ALTER TABLE `visita`
  MODIFY `idVisita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Constraints for table `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`idMascota`) REFERENCES `mascotas` (`idMascota`),
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`idTratamiento`) REFERENCES `tratamiento` (`idTratamiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
