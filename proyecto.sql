-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 03:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `eliminado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `correo`, `pass`, `eliminado`) VALUES
(1, 'Dylan', 'Nava', 'dylan@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(2, 'Ana', 'Lopez', 'ana@mail.com', '250cf8b51c773f3f8dc8b4be867a9a02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id` int(128) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `correo` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `rol` int(1) NOT NULL,
  `archivo_n` varchar(255) NOT NULL,
  `archivo` varchar(128) NOT NULL,
  `eliminado` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `correo`, `pass`, `rol`, `archivo_n`, `archivo`, `eliminado`) VALUES
(3, 'Jose Juan', 'Lopez', 'JoseJuan@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 1, 'e92e6622f3b8c86cc9dda7f3f48006c8.png', 'R.png', 0),
(4, 'Luis Arturo', 'Torres Hernandez', 'luis@mail.com', 'luis', 1, '', '', 0),
(5, 'Jorge Adrian', 'Montes Casas', 'jorge@mail.com', 'jorge', 1, '', '', 0),
(6, 'Mario Samuel', 'Barba Venegas', 'mario@mail.com', 'mario', 2, '', '', 0),
(7, '1', '11', '12', 'c81e728d9d4c2f636f067f89cc14862c', 2, '', '', 1),
(8, 'test', 't', 'a', 'c81e728d9d4c2f636f067f89cc14862c', 3, '', '', 1),
(9, 'Gerardo', 'Huerta', 'Gerardo@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '', '', 0),
(10, 'Oscar', 'Mendez', 'Oscar@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '', '', 1),
(11, 'Oscar ', 'Torres', 'oscar@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '', '', 1),
(12, 'Oscar ', 'Torres', 'oscar@gmail.com', 'bf083d4ab960620b645557217dd59a49', 0, '', '', 1),
(13, 'Fernando', 'Juarez', 'fer@gmail.com', '202cb962ac59075b964b07152d234b70', 0, '', '', 0),
(14, 'q', 'q', 'fer@gmail.com', 'c81e728d9d4c2f636f067f89cc14862c', 0, '', '', 1),
(16, 'karla', 'camacho', 'karla@mail.com', '12345', 2, '', '', 0),
(17, 'Dylan', 'Nava', 'dylannava@gmail.com', 'c5b1b52d2780fd05145be7539b8b17d2', 1, '', '', 0),
(18, 'Charmander', 'Fuego', 'charmander@mail.com', 'f0eb43ee186dc087bda60ba3441a0b30', 1, 'dc75b96b4141c0a0f5d2658b084e170b.png', 'Charmander.png', 0),
(19, 'Jona', 'Arenas', 'Jona@mail.com', '37ba7d73de6e6191b41c717b35661a9e', 1, '19fa7497013a87bd77f7adb96beaf768.png', 'R.png', 0),
(20, 'Gustavo', 'Polo', 'Fernando@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '39cbf673833ad6e3eaaaa7433907d38b.png', 'Charmander.png', 0),
(21, 'alejandro', 'a', 'a@mail.com', '0cc175b9c0f1b6a831c399e269772661', 1, 'ea30ac90fd7013d12b00cf355e810878.jpg', 'data-mining-icon-19.jpg', 0),
(25, 'admin', 'admin', 'admin@mail.com', 'admin', 1, 's', 's', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `id_cliente`, `status`) VALUES
(1, '2024-11-21 21:59:52', 1, 1),
(2, '2024-11-22 08:12:14', 1, 1),
(3, '2024-11-25 15:46:38', 1, 1),
(6, '2024-11-25 23:11:32', 1, 1),
(7, '2024-11-28 08:28:05', 1, 1),
(8, '2024-11-28 16:31:33', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_productos`
--

CREATE TABLE `pedidos_productos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT 1,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos_productos`
--

INSERT INTO `pedidos_productos` (`id`, `id_pedido`, `id_producto`, `cantidad`, `precio`) VALUES
(1, 1, 7, 1, 150.75),
(2, 1, 6, 1, 100.5),
(3, 1, 11, 1, 242.99),
(4, 1, 3, 1, 3999.9),
(5, 2, 9, 1, 192.5),
(6, 2, 10, 1, 151.75),
(7, 3, 5, 1, 100),
(8, 3, 6, 1, 100.5),
(10, 3, 3, 1, 3999.9),
(13, 6, 9, 1, 192.5),
(14, 6, 1, 1, 25000),
(17, 6, 15, 3, 10000),
(18, 7, 12, 1, 322.5),
(19, 7, 13, 2, 270.75),
(20, 7, 3, 1, 3999.9),
(22, 8, 7, 2, 150.75),
(23, 8, 8, 2, 200.99),
(24, 8, 6, 2, 100.5),
(25, 8, 3, 2, 3999.9);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `codigo` varchar(32) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `costo` double NOT NULL,
  `stock` int(11) NOT NULL,
  `archivo_n` varchar(255) DEFAULT NULL,
  `archivo` varchar(128) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `codigo`, `descripcion`, `costo`, `stock`, `archivo_n`, `archivo`, `eliminado`) VALUES
(1, 'Laptop Gamer', 'LP001', 'Laptop de alto rendimiento para gaming y trabajo pesado.', 25000, 9, '2da9e44c6a2c6dd28a2d1fa6bc67a7b8.jpg', 'laptop.jpg', 0),
(2, 'Smartphone Pro', 'SP002', 'Smartphone con cámara de 108MP y batería de larga duración.', 15999.99, 50, '0406f3b9f8921eb6518a5ff5609cad27.jpg', 'celular.jpg', 0),
(3, 'Audífonos Inalámbricos', 'AI003', 'Audífonos con cancelación de ruido y alta fidelidad de sonido.', 3999.9, 100, '71f16f0a8519368084afb6efe11be304.jpg', 'audifonos.jpg', 0),
(4, 'Prueva', '', '', 0, 0, 'dc75b96b4141c0a0f5d2658b084e170b.png', 'Charmander.png', 1),
(5, 'Prueba', 'COD01', 'Producto prueba', 100, 1, 'dc75b96b4141c0a0f5d2658b084e170b.png', 'Charmander.png', 0),
(6, 'Pokemon Sol', 'COD001', 'Pokemon Sol', 100.5, 20, '186ef9d5d844d71559e6cc253cab46b0', 'Caratula_Pokemon_Sol.png', 0),
(7, 'Pokemon X', 'COD002', 'Pokemon X', 150.75, 15, 'd91927929467ecce9680cded77bd9786', 'Caratula_Pokemon_X.png', 0),
(8, 'Pokemon Negro', 'COD003', 'Pokemon Negro', 200.99, 30, 'b32874834420f59a79060aa513a2378c', 'Caratula_Pokemon_Negro.png', 0),
(9, 'Pokemon Perla', 'COD004', 'Pokemon Perla', 192.5, 20, 'dc382a36655866025cf4acfad5cdaf57', 'Caratula_Pokemon_Perla.png', 0),
(10, 'Pokemon Ruby', 'COD005', 'Pokemon Ruby', 151.75, 15, '4d1b355629afeda04bd742fc993d13df', 'Caratula_Pokemon_Ruby.png', 0),
(11, 'Pokemon Amarillo', 'COD006', 'Pokemon Amarillo', 242.99, 30, '99d1f497a550635c17f1ffa8268a9a2e', 'Caratula_Pokemon_Amarillo.png', 0),
(12, 'Pokemon Zafiro', 'COD007', 'Pokemon Zafiro', 322.5, 20, '17fc1436a09cf30ff60670a27fc436f2', 'Caratula_Pokemon_Zafiro.png', 0),
(13, 'Pokemon Platino', 'COD008', 'Pokemon Platino', 270.75, 15, 'a2ddca921a1b8f3def6798fe3abf5e08', 'Caratula_Pokemon_Platino.png', 0),
(14, 'Pokemon Y', 'COD009', 'Pokemon Y', 200.99, 30, '189ae8af38453b81395754d4276841b1', 'Caratula_Pokemon_Y.png', 0),
(15, 'Laptop 02', 'LP002', 'Laptop Promocional', 10000, 10, '1696ba0449a70466d7628938c6dda179.png', 'charmander.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `archivo_n` varchar(255) DEFAULT NULL,
  `archivo` varchar(128) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promociones`
--

INSERT INTO `promociones` (`id`, `nombre`, `archivo_n`, `archivo`, `eliminado`) VALUES
(1, 'Promocion 2x1', '9bb2b0a5e5ed41cd5b671242c5cf8f56.png', 'oferta1.png', 0),
(2, 'Ofertas', '19fa7497013a87bd77f7adb96beaf768.png', 'R.png', 1),
(3, 'Laptops 2x1', '65ce29bfc7fec3aaab923c43e48ea179.png', 'oferta2.png', 0),
(4, 'Promociones!', '6cfc4423896b28363cff50d965c85a42.png', 'oferta5.png', 0),
(5, 'Pokemon X -30%', '7431605b3b0fe4a24087abf3fec35477.jpg', 'ofertas4.jpg', 0),
(6, 'Promocion Navidad', '1456b2a47b0b52ebbcc1dc2aa2d3e0de.jpg', 'oferta3.jpg', 0),
(7, 'Promocion Halloween', 'a1e739f15ff5836b0dacc15acb536888.jpg', 'oferta6.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_pedido` (`id_pedido`,`id_producto`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedidos_productos`
--
ALTER TABLE `pedidos_productos`
  ADD CONSTRAINT `pedidos_productos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
