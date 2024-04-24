-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3303:3303
-- Generation Time: Apr 24, 2024 at 09:25 AM
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
-- Database: `web1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Slider'),
(2, 'Discount'),
(3, 'Popular'),
(4, 'Discount Slider'),
(5, 'Popular Slider'),
(6, 'All Discount Pro'),
(7, 'All Popular Pro'),
(8, 'Main Product'),
(9, 'Main Product1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(250) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_cal` int(11) NOT NULL,
  `pro_des` text NOT NULL,
  `pro_dis` int(11) NOT NULL,
  `pro_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `cat_id`, `pro_price`, `pro_cal`, `pro_des`, `pro_dis`, `pro_img`) VALUES
(48, 'Caramel Frappuccino® Blended Beverage', 1, 24, 250, 'Caramel syrup meets coffee, milk and ice for a rendezvous in the blender, while whipped cream and buttery caramel sauce layer the love on top. To change things up, try it affogato-style', 0, '660e4b37e3bcf_1712212791.png'),
(49, 'Double Chocolaty Chip Crème Frappuccino®', 1, 1.9, 350, 'Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.', 0, '660e4b69c5c3a_1712212841.png'),
(50, 'Matcha Crème Frappuccino®', 1, 2.1, 250, 'We take Frappuccino® roast coffee and vanilla bean powder, combine them with milk and ice, topped with whipped cream. Tastes like happiness.', 25, '660e4ba89d6b4_1712212904.png'),
(51, 'Marcia Hahn', 3, 1.77, 250, 'Ut eius quibusdam ne', 15, '660e4c0b7f4f1_1712213003.png'),
(52, 'Nora Rodgers', 3, 2.25, 350, 'Ea sit eius sed aut', 0, '660e4c20c588d_1712213024.png'),
(53, 'Ruth Jarvis', 3, 1.45, 240, 'Aut at accusantium e', 25, '660e4c4b64ec1_1712213067.png'),
(54, 'Craig Gilmore', 3, 1.45, 150, 'Exercitationem incid', 0, '660e4c62cbd82_1712213090.png'),
(55, 'Shad Serrano', 3, 1.8, 2, 'Iusto incidunt et a', 0, '660e4c7dd9674_1712213117.png'),
(56, 'Aubrey Santiago', 3, 1.9, 350, 'Pariatur Culpa ea', 0, '660e4cb977a3b_1712213177.png'),
(57, 'Galena Raymond', 3, 2.45, 120, 'Neque vel mollit lor', 0, '660e4cd4092f9_1712213204.png'),
(58, 'Candace Ochoa', 3, 1.8, 250, 'Harum sequi debitis', 0, '660e4cef97265_1712213231.png'),
(59, 'Ifeoma Alvarez', 2, 1.78, 220, 'Non ad ea consectetu', 25, '660e4d3aacb8e_1712213306.png'),
(60, 'Coby Dillon', 2, 1.44, 240, 'In duis nisi adipisi', 20, '660e4d4ce68df_1712213324.png'),
(61, 'Hyatt Reid', 2, 1.75, 350, 'Dolor sunt quo aut b', 45, '660e4d6136c5b_1712213345.png'),
(63, 'Hedwig Marsh', 2, 1.22, 350, 'Quaerat Nam dolores', 45, '660e4d8ca9c10_1712213388.png'),
(64, 'Cynthia Davidson', 2, 2.19, 245, 'Atque dolor earum te', 15, '660e4da490352_1712213412.png'),
(65, 'Yuri Becker', 2, 1.87, 244, 'Ut assumenda eius ma', 50, '660e4dc7f2dbb_1712213447.png'),
(67, 'Matcha Crème', 9, 1.67, 250, 'This blend of sweetened premium matcha green tea, milk and ice—topped off with sweetened whipped cream—inspires a delicious boost and good green vibes.', 35, '660e4f4ea52e8_1712213838.png'),
(68, 'Mocha Cookie Crumble Frappuccino®', 4, 1.56, 245, 'Frappuccino® Roast coffee, mocha sauce and Frappuccino® chips blended with milk and ice, layered on top of whipped cream and chocolate cookie crumble and topped with vanilla whipped', 50, '660e509d9545d_1712214173.png'),
(69, 'Caffè Vanilla Frappuccino®', 4, 1.45, 145, 'We take Frappuccino® roast coffee and vanilla bean powder, combine them with milk and ice, topped with whipped cream. Tastes like happiness.', 10, '660e50c4cae83_1712214212.png'),
(70, 'Lavender Crème Frappuccino®', 4, 2.1, 160, 'Sweet and subtle notes of lavender blended with vanilla syrup, milk and ice, topped with whipped cream. A delicious blend of floral lavender and sweet vanilla in every sip.', 35, '660e5108ae545_1712214280.png'),
(71, 'Double Chocolaty Chip Crème Frappuccino®', 4, 1.78, 350, 'Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.', 25, '660e513c44e57_1712214332.png'),
(72, 'Mason Bennett', 6, 2.1, 250, 'Officia ad est assum', 25, '660e519862e61_1712214424.png'),
(73, 'Myra Wells', 6, 2.89, 450, 'Laborum Distinctio', 25, '660e51ab9505e_1712214443.png'),
(74, 'Myles Dennis', 6, 1.67, 245, 'Id velit ad ut culpa', 10, '660e51bd769b5_1712214461.png'),
(75, 'Thor Carrillo', 6, 1.34, 25, 'Repudiandae ut perfe', 45, '660e51d11a17c_1712214481.png'),
(76, 'Whitney Bates', 6, 1.78, 240, 'Hic et voluptatem h', 55, '660e51f42660e_1712214516.png'),
(77, 'Josephine Baird', 6, 1.84, 234, 'Illo aut enim animi', 45, '660e520ef15eb_1712214542.png'),
(78, 'Christen Lopez', 6, 2.89, 350, 'Excepteur est sit d', 15, '660e52235aa92_1712214563.png'),
(79, 'Zahir Leach', 6, 1.54, 240, 'Itaque consequuntur', 25, '660e5236c7759_1712214582.png'),
(80, 'Double Chocolaty Chip Crème Frappuccino®', 5, 2.11, 245, 'Rich mocha-flavored sauce meets up with chocolaty chips, milk and ice for a blender bash. Top it off with sweetened whipped cream and mocha drizzle for a real party in your mouth.', 25, '660e528b91b18_1712214667.png'),
(81, 'Portia Heath', 7, 1.67, 350, 'Est id et repudianda', 35, '660e52c2233db_1712214722.png'),
(82, 'Caramel Frappuccino® Blended Beverage', 5, 2, 100, 'Caramel Frappuccino® Blended Beverage', 25, '6623de668334f_1713626726.png'),
(84, 'ice latte', 7, 2, 100, 'coffee', 12, '6623dee0c6b7c_1713626848.png'),
(85, 'Coffee drinks are made by brewing water with ground coffee beans', 5, 2, 100, 'coffee', 20, '6623e00d245c3_1713627149.png'),
(86, 'French press', 7, 1.33, 100, 'see French press', 10, '6623e05100447_1713627217.png'),
(87, 'tea leaves', 7, 2.5, 100, 'coffee', 10, '6623e0b8eb6aa_1713627320.png'),
(88, 'coffee cherry', 7, 2, 100, 'coffee', 12, '6623e0ea5834e_1713627370.png'),
(89, 'Camellia sinensis', 7, 2.5, 100, 'coffee', 12, '6623e126a5b84_1713627430.png'),
(90, 'Disruption', 7, 2, 100, 'Disruption', 12, '6623e16c75a77_1713627500.png'),
(91, 'Fixation / kill-green', 7, 2.8, 100, 'Fixation / kill-green:', 12, '6623e18ee05d6_1713627534.png'),
(95, 'ice latte', 8, 2, 100, 'coffee', 25, '6628af9a0cca0_1713942426.png');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', 123),
(2, 'chetra', 'chetra', 123),
(4, 'heng', 'heng', 123),
(6, 'Socheata thai', 'booyatwofac+00005@yandex.com', 1234),
(7, 'ddssd', 'ddd', 123),
(8, 'peo', 'peo', 1234),
(9, 'leng', 'la', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
