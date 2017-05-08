-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 02:29 PM
-- Server version: 5.7.18-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda`
--

-- --------------------------------------------------------

--
-- Table structure for table `anuncio`
--

CREATE TABLE `anuncio` (
  `CODANUNCIO` int(11) NOT NULL,
  `CODPRODUCTO` int(11) NOT NULL,
  `CODUSUARIO` int(11) NOT NULL,
  `TIEMPO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anuncio`
--

INSERT INTO `anuncio` (`CODANUNCIO`, `CODPRODUCTO`, `CODUSUARIO`, `TIEMPO`) VALUES
(80, 501, 101, '2005-05-21'),
(81, 502, 101, '2017-05-23'),
(82, 501, 102, '2017-04-23'),
(83, 503, 102, '2016-05-23'),
(84, 504, 103, '2016-08-23'),
(85, 504, 103, '2016-09-03'),
(86, 501, 105, '2016-04-25'),
(87, 502, 105, '2016-07-23'),
(88, 502, 104, '2015-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `CODCATEGORIA` int(11) NOT NULL,
  `CATEGORIA` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`CODCATEGORIA`, `CATEGORIA`) VALUES
(302, 'electronica'),
(303, 'hogar'),
(304, 'utensillos '),
(305, 'herramientas'),
(306, 'ropa'),
(307, 'galletas'),
(308, 'perfumes'),
(309, 'libros'),
(310, 'arte'),
(311, 'musica');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `CODPRODUCTO` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `PRECIO` varchar(45) NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  `CODCATEGORIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`CODPRODUCTO`, `NOMBRE`, `PRECIO`, `DESCRIPCION`, `CODCATEGORIA`) VALUES
(500, 'mesa caoba', '500', 'tamaño ideal', 303),
(501, 'cortinas de seda', '200', 'colores llamtivos', 303),
(502, 'caja de herramientas', '300', 'todo lo que nececites', 305),
(503, 'vestido', '15', 'colores oscures', 306),
(504, 'galletas de miel', '5', '10 en cada empaque', 307),
(505, 'harry potter', '300', 'saga completa', 309),
(506, 'romeo y julieta', '35', 'clasico', 309),
(507, 'crepusculo', '10', 'primer libro', 309);

-- --------------------------------------------------------

--
-- Table structure for table `tienda`
--

CREATE TABLE `tienda` (
  `CODTIENDA` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `CODANUNCIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tienda`
--

INSERT INTO `tienda` (`CODTIENDA`, `CANTIDAD`, `CODANUNCIO`) VALUES
(1, 18, 80),
(2, 45, 80),
(3, 12, 81),
(4, 4, 82),
(5, 5, 83),
(6, 6, 84),
(7, 8, 81),
(8, 9, 81),
(9, 3, 83),
(10, 15, 84);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `CODUSUARIO` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `CONTRASEÑA` varchar(45) NOT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `PAIS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`CODUSUARIO`, `NOMBRE`, `EMAIL`, `CONTRASEÑA`, `TELEFONO`, `PAIS`) VALUES
(100, 'PAME', 'pame@hotmail.com', 'pame', 475215, 'bolivia'),
(101, 'ALEJANDRA', 'ale@hotmail.com', 'ale', 472351, 'bolivia'),
(102, 'PEDRO', 'p234@hotmail.com', 'pedro', 487354, 'colombia'),
(103, 'PABLO', 'pablito230@hotmail.com', 'pablo', 123542, 'colmbia'),
(104, 'PAOLA', 'paola@hotmail.com', 'pao', 478921, 'peru'),
(105, 'DANIEL', 'dani@gmail.com', 'dani', 417892, 'mexico'),
(106, 'ROMINA', 'romina@gmail.com', 'romi', 479823, 'mexico'),
(107, 'CAROLINA', 'caro@hotmail.com', 'caro', 423654, 'peru'),
(108, 'PEDRO', 'pedrito@gmail.com', 'pedro', 544256, 'uruguay'),
(109, 'JAVIER', 'javi@gmail.com', 'javi', 425662, 'chile'),
(110, 'MARIA', 'mari@gmail.com', 'mari', 452364, 'argentina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`CODANUNCIO`),
  ADD KEY `CODPRODUCTO_idx` (`CODPRODUCTO`),
  ADD KEY `CODUSUARIO_idx` (`CODUSUARIO`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CODCATEGORIA`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CODPRODUCTO`),
  ADD KEY `CODCATEGORIA_idx` (`CODCATEGORIA`);

--
-- Indexes for table `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`CODTIENDA`),
  ADD KEY `CODANUNCIO_idx` (`CODANUNCIO`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CODUSUARIO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `CODPRODUCTO` FOREIGN KEY (`CODPRODUCTO`) REFERENCES `producto` (`CODPRODUCTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CODUSUARIO` FOREIGN KEY (`CODUSUARIO`) REFERENCES `usuario` (`CODUSUARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `CODCATEGORIA` FOREIGN KEY (`CODCATEGORIA`) REFERENCES `categoria` (`CODCATEGORIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `CODANUNCIO` FOREIGN KEY (`CODANUNCIO`) REFERENCES `anuncio` (`CODANUNCIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
