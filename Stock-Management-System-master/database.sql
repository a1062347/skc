-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 07:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `brand_active` varchar(20) NOT NULL,
  `brand_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'MONIN', '1', '1'),
(2, 'Da Vinci', '1', '1'),
(20, 'TANGINA', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(20) NOT NULL,
  `categories_active` varchar(20) NOT NULL,
  `categories_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'SYRUP', '1', 1),
(2, 'SAUCE', '1', 1),
(3, 'POWDERS', '1', 1),
(4, 'OTHERS', '1', 1),
(8, 'ulul', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_contact` varchar(50) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `order_status`) VALUES
(7, '2020-08-12', 'Davies Kiprono', '0704988935', 24, 3, 27, 0, 27, 24, 3, '1', '1', 2),
(8, '2020-08-05', 'Kiprono Davies', '0704988935', 0, 0, 0, 0, 0, 200, -200, '3', '1', 2),
(9, '2024-11-09', 'Ralph', '09617252971', 3000, 390, 3390, 100, 3290, 3290, 0, '2', '1', 1),
(10, '2024-11-30', 'Awie', '103201203', 500, 65, 565, 100, 465, 465, 0, '2', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `order_item_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(1, '245432ws', 12, 22, 233, 1),
(6, '6', 1, 2, 2, 2),
(7, '7', 2, 12, 24, 2),
(8, '10', 1, 0, 0, 2),
(9, '1', 10, 100, 1000, 1),
(10, '6', 3, 100, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `brand_id` varchar(50) NOT NULL,
  `categories_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `active` varchar(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(1, 'Caramel Sauce', '../assests/images//202876247567318b52b40d6.jpg', '1', '2', 10, 100, '1', 1),
(2, 'Dark Chocolate Sauce', '../assests/images//135253157967318b747aa2b.jpg', '1', '2', 10, 100, '1', 1),
(3, 'Raspberry Syrup', '../assests/images//36359125167318b8481585.jpg', '1', '1', 10, 100, '1', 1),
(4, 'Vanilla Syrup', '../assests/images//124368307767318b93d7ecf.jpg', '1', '1', 10, 100, '1', 1),
(5, 'Strawberry Fruitmix', '../assests/images//10930038367318ba454976.jpg', '1', '2', 10, 100, '1', 1),
(6, 'Blueberry Fruitmix', '../assests/images//203024006367318bb686b34.jpg', '1', '2', 10, 100, '1', 1),
(7, 'Tofeenut Syrup', '../assests/images//202640771867318bc4ee47c.jpg', '1', '1', 10, 100, '1', 1),
(8, 'Frosted Mint', '../assests/images//31111510667319826821cb.jpg', '1', '2', 10, 100, '1', 1),
(9, 'Salted Caramel', '../assests/images//568784987673199b16179c.jpg', '2', '2', 10, 100, '1', 1),
(10, 'White Chocolate', '../assests/images//1482197496731991308874.jpg', '2', '2', 10, 100, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(3, 'root', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
